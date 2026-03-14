<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\DigitalBook;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;

class DigitalBookController extends Controller
{

    public function index(Request $request)
    {
        $q = DigitalBook::with('category');

        if ($request->search) {
            $search = $request->search;

            $q->where(function ($query) use ($search) {
                $query->where('title','like',"%$search%")
                    ->orWhere('author','like',"%$search%")
                    ->orWhereHas('category', function ($c) use ($search) {
                        $c->where('name','like',"%$search%");
                    });
            });
        }

        return $q->paginate(10);
    }


    public function store(Request $request)
    {

        $request->validate([
            'title'=>'required',
            'author'=>'nullable',
            'category_id'=>'required',
            'description'=>'nullable',
            'file'=>'required|file|mimes:pdf,epub|max:20480'
        ]);

        $path = $request->file('file')->store('digital_books','public');
        // $upload = Cloudinary::uploadFile(
        //     $request->file('file')->getRealPath(),
        //     [
        //         'folder' => 'digital_books',
        //         'resource_type' => 'raw'
        //     ]
        // );

        $url = $upload->getSecurePath();

        $book = DigitalBook::create([
            'title'=>$request->title,
            'author'=>$request->author,
            'category_id'=>$request->category_id,
            'description'=>$request->description,
            'file_path'=>$path,
            'file_type'=>$request->file('file')->getClientOriginalExtension()
        ]);
        // $book = DigitalBook::create([
        //     'title'=>$request->title,
        //     'author'=>$request->author,
        //     'category_id'=>$request->category_id,
        //     'description'=>$request->description,
        //     'file_path'=>$url,
        //     'file_type'=>$request->file('file')->getClientOriginalExtension()
        // ]);

        return response()->json($book);
    }


    public function update(Request $request,$id)
    {

        $book = DigitalBook::findOrFail($id);

        $request->validate([
            'title'=>'required',
            'author'=>'nullable',
            'category_id'=>'required',
            'description'=>'nullable',
            'file'=>'nullable|file|mimes:pdf,epub|max:20480'
        ]);

        if($request->hasFile('file')){

            if($book->file_path){
                Storage::disk('public')->delete($book->file_path);
            }

            $path = $request->file('file')->store('digital_books','public');

            $book->file_path = $path;
            $book->file_type = $request->file('file')->getClientOriginalExtension();
        }

        $book->update([
            'title'=>$request->title,
            'author'=>$request->author,
            'category_id'=>$request->category_id,
            'description'=>$request->description
        ]);

        return $book;
    }


    public function destroy($id)
    {

        $book = DigitalBook::findOrFail($id);

        if($book->file_path){
            Storage::disk('public')->delete($book->file_path);
        }

        $book->delete();

        return response()->json(['message'=>'Deleted']);
    }

}