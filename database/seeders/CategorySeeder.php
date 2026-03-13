<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Category;

class CategorySeeder extends Seeder
{
    public function run(): void
    {
        $categories = [
            'Kelas 7',
            'Kelas 8',
            'Kelas 9',
            'Kelas 10',
            'Kelas 11',
            'Kelas 12',
            'Pendidikan',
            'Biografi',
            'Rohani',
            'Encyclopedia',
            'English Classic',
            'Kuliner',
            'Memoar',
            'Music',
            'Children',
            'Fantasy',
            'Novel',
            'Buku Panduan',
            'Umum'
        ];

        foreach ($categories as $category) {
            Category::firstOrCreate([
                'name' => $category
            ]);
        }
    }
}
