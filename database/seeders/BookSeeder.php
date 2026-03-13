<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Book;
use App\Models\Category;


class BookSeeder extends Seeder
{
    public function run(): void
    {
        $books = [

            [
            'title' => 'Bahasa dan Sastra Indonesia SMA/MA Kelas XII Program IPA dan Ips',
            'author' => null,
            'publisher' => 'Bailmu',
            'pages' => null,
            'category' => 'Kelas 12'
            ],

            [
            'title' => 'Pendidikan Pancasila dan Kewarganearaan SMP/MTs Kelas VIII',
            'author' => 'Lili Nurlaili & Dewi Aniaty',
            'publisher' => 'Bailmu',
            'pages' => null,
            'category' => 'Kelas 8'
            ],

            [
            'title' => 'Pendidikan Pancasila dan Kewarganegaraan untuk SMP MTs Kelas IX',
            'author' => 'M. Taupan, dkk.',
            'publisher' => 'Yrama Widya',
            'pages' => null,
            'category' => 'Kelas 9'
            ],

            [
            'title' => 'Pembelajaran IPS Terpadu 2 untuk Kelas VIII SMP/MTs',
            'author' => 'Sandiman, Endang Mulyani, Dyah Respati Surya',
            'publisher' => 'Platinum',
            'pages' => null,
            'category' => 'Kelas 8'
            ],

            [
            'title' => 'Matematika SMA/MA Kelas XI',
            'author' => 'Sunardi, Slamet Waluyo, Sutrisna',
            'publisher' => 'Bailmu',
            'pages' => null,
            'category' => 'Kelas 11'
            ],

            [
            'title' => 'Matematika untuk SMP/MTs Kelas VIII',
            'author' => 'Suwah Sembiring, Cucun Cunayah, Ghany Akhmad',
            'publisher' => 'Yrama Widya',
            'pages' => null,
            'category' => 'Kelas 8'
            ],

            [
            'title' => 'English Alive 2 Senior High School Grade XI',
            'author' => 'Tri Indaryati',
            'publisher' => 'Yudhistira',
            'pages' => null,
            'category' => 'Kelas 11'
            ],

            [
            'title' => 'Effective English 3 for Grade IX of Secondary School',
            'author' => 'Soegeng HS',
            'publisher' => 'Global',
            'pages' => null,
            'category' => 'Kelas 9'
            ],

            [
            'title' => 'Ilmu Pengetahuan Sosial untuk SMP.MTs Kelas IX',
            'author' => 'Sanusi Faitah, Jono Trimanto, Juli Waskito, Mohammad Taukit Setyawan',
            'publisher' => null,
            'pages' => null,
            'category' => 'Kelas 9'
            ],

            [
            'title' => 'Seni Budaya Kelas X SMA/MA/SMK/MAK Semester 1',
            'author' => null,
            'publisher' => null,
            'pages' => null,
            'category' => 'Kelas 10'
            ],

            [
            'title' => 'Mengenal Peralatan di Laboratorium',
            'author' => 'Dewi Kurniawati',
            'publisher' => null,
            'pages' => null,
            'category' => 'Buku Panduan'
            ],

            [
            'title' => 'Prakarya dan Kewirausahaan Kelas X SMA/MA/SMK/MAK Semester 1',
            'author' => null,
            'publisher' => null,
            'pages' => null,
            'category' => 'Kelas 10'
            ],

            [
            'title' => 'Pendalaman Buku Teks Ekonomi 3 SMP Kelas IX',
            'author' => 'Endang Mulyadi',
            'publisher' => 'Yudhistira',
            'pages' => null,
            'category' => 'Kelas 9'
            ],

            [
            'title' => 'Pendidikan Kewarganegaraan 1 Untuk Kelas VII SMP/MTs',
            'author' => 'Wahyu Nugroho',
            'publisher' => null,
            'pages' => null,
            'category' => 'Kelas 7'
            ],

            [
            'title' => 'Terobosan Baru...!!! Panduan Lengkap Praktikum Kimia SMA Kelas X, XI, dan XII',
            'author' => 'Eka Anastria Endah Susilowati, S.Si.',
            'publisher' => null,
            'pages' => null,
            'category' => 'Pendidikan'
            ],

            [
            'title' => 'Cermin Remaja 2 : Hidup Dalam Anugerahnya Kelas 8 SMP',
            'author' => null,
            'publisher' => 'BPK',
            'pages' => null,
            'category' => 'Kelas 8'
            ],

            [
            'title' => 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Kimia 3',
            'author' => 'Tim Penulis Buku Olimpiade Kimia',
            'publisher' => null,
            'pages' => null,
            'category' => 'Pendidikan'
            ],

            [
            'title' => 'Kimia Organik Langkah Sukses menuju Olimpiade Kimia',
            'author' => null,
            'publisher' => null,
            'pages' => null,
            'category' => 'Pendidikan'
            ],

            [
            'title' => 'Matematika Jilid 3 untuk SMA Kelas XII Program Ilmu Alam',
            'author' => 'Sartono Wirodikromo',
            'publisher' => null,
            'pages' => null,
            'category' => 'Kelas 12'
            ],

            [
            'title' => 'Perspektif Matematika 3 untuk Kelas XII SMA dan MA Program Ilmu Pengetahuan Alam',
            'author' => 'Rosihan Ari Y., Indriyastuti',
            'publisher' => 'Platinum',
            'pages' => null,
            'category' => 'Kelas 12'
            ],

            [
            'title' => 'Sejarah Pembelajaran Sejarah Interaktif 3 untuk Kelas XII SMA dan MA Program IPS',
            'author' => 'Herimanto',
            'publisher' => 'Platinum',
            'pages' => null,
            'category' => 'Kelas 12'
            ],

            [
            'title' => 'Pendidikan Pancasila dan Kewarganegaraan Kelas VII SMP/MTs',
            'author' => null,
            'publisher' => null,
            'pages' => null,
            'category' => 'Kelas 7'
            ],

            [
            'title' => 'Ilmu Pengetahuan Alam Buku Siswa untuk SMA Kelas X',
            'author' => null,
            'publisher' => null,
            'pages' => null,
            'category' => 'Kelas 10'
            ],

            [
            'title' => 'Panduan Praktikum Kimia SMA/MA Kelas X',
            'author' => 'A. Haris Watoni',
            'publisher' => 'Yrama Widya',
            'pages' => null,
            'category' => 'Kelas 10'
            ],

            [
            'title' => 'Mengkaji Ilmu Geografi 3 untuk Kelas XII SMA dan MA',
            'author' => 'Sugiyanto, Danang Endarto',
            'publisher' => 'Platinum',
            'pages' => null,
            'category' => 'Kelas 12'
            ],

            [
            'title' => 'Mengkaji Ilmu Geografi 2 untuk Kelas XI SMA dan MA',
            'author' => 'Sugiyanto, Danang Endarto',
            'publisher' => 'Platinum',
            'pages' => null,
            'category' => 'Kelas 11'
            ],

            [
            'title' => 'Membangun Wawasan Kewarganegaraan 2 untuk Kelas XI SMA dan MA',
            'author' => 'Bambang Tri Purwanto, Sunardi H.S.',
            'publisher' => 'Platinum',
            'pages' => null,
            'category' => 'Kelas 11'
            ],

            [
            'title' => 'Membangun Wawasan Kewarganegaraan 3 untuk Kelas XII SMA dan MA',
            'author' => 'Bambang Tri Purwanto, Sunardi H.S.',
            'publisher' => 'Platinum',
            'pages' => null,
            'category' => 'Kelas 12'
            ],

            [
            'title' => 'Ilmu Pengetahuan Alam untuk SMP/MTs. Kelas VII',
            'author' => 'Sunardi, Nunung Nurhayati, Budiman Anwar',
            'publisher' => 'Yrama Widya',
            'pages' => null,
            'category' => 'Kelas 7'
            ],

            [
            'title' => 'Ilmu Pengetahuan Alam 3 untuk Kelas IX SMP dan MTs',
            'author' => 'Daroji, Haryati',
            'publisher' => 'Global',
            'pages' => null,
            'category' => 'Kelas 9'
            ],

            [
            'title' => 'Bahasa Indonesia Kelas VII SMP/MTs',
            'author' => null,
            'publisher' => null,
            'pages' => null,
            'category' => 'Kelas 7'
            ],

            [
            'title' => 'IPA Terpadu 2B SMP Kelas VIII',
            'author' => 'V.K. Sally dkk.',
            'publisher' => 'Yudhistira',
            'pages' => null,
            'category' => 'Kelas 8'
            ],

            [
            'title' => 'Pendalaman Buku Teks Geografi 3 SMP Kelas IX',
            'author' => 'Fifin Septianawati',
            'publisher' => 'Yudhistira',
            'pages' => null,
            'category' => 'Kelas 9'
            ],

            [
            'title' => 'PR Sejarah Indonesia untuk SMA.MA.SMK.MAK Kelas XI Semester 1',
            'author' => 'Ringo Rahata, Melkisedek Bagas Fenetiruma, Muhamad Muchlis',
            'publisher' => 'Intan Pasiwara',
            'pages' => null,
            'category' => 'Kelas 11'
            ],

            [
            'title' => 'Senibudaya Kelas VIII SMP/MTs',
            'author' => null,
            'publisher' => null,
            'pages' => null,
            'category' => 'Kelas 8'
            ],

            [
            'title' => 'Bahasa Indonesia 0-323',
            'author' => null,
            'publisher' => null,
            'pages' => null,
            'category' => 'Pendidikan'
            ],

            [
            'title' => 'Cerdas Berbahasa Indonesia Jilid 1 untuk SMA/MA Kelas X',
            'author' => 'Engkos Kosasih',
            'publisher' => null,
            'pages' => null,
            'category' => 'Kelas 10'
            ],
            
             [
                'title' => 'Indonesian Delicacies',
                'author' => 'Yasa Boga',
                'publisher' => 'Gramedia Pustaka Utama',
                'pages' => null,
                'category' => 'Kuliner'
            ],

            [
                'title' => 'The Gift of Giving',
                'author' => 'Wayne Watts',
                'publisher' => null,
                'pages' => null,
                'category' => 'Umum'
            ],

            [
                'title' => 'Baa Baa Black Sheep',
                'author' => 'Rudyard Kipling',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'Pelajaran Pertama Calon Ayah',
                'author' => 'Arswendo Atmowiloto',
                'publisher' => null,
                'pages' => null,
                'category' => 'Umum'
            ],

            [
                'title' => 'Pedang Roh',
                'author' => 'Andrew J. Shreeve',
                'publisher' => null,
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Panduan Praktis Rottweiler',
                'author' => 'Redaksi Trubus',
                'publisher' => null,
                'pages' => null,
                'category' => 'Hobi'
            ],

            [
                'title' => 'Pandangan Kristen Tentang Kematian',
                'author' => 'Gladys Hunt',
                'publisher' => null,
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Hidup Berkemenangan',
                'author' => 'Ronald Dunn',
                'publisher' => 'Penerbit Gandum Mas',
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Bangkitlah',
                'author' => 'Max Lucado',
                'publisher' => null,
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Apa yang Terjadi Setelah Kita Mati?',
                'author' => 'Martin D. Dainton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Treasure Island',
                'author' => 'Robert Louis Stevenson',
                'publisher' => 'Gramedia Pustaka Utama',
                'pages' => null,
                'category' => 'English Classic'
            ],

            [
                'title' => 'Sherlock Holmes Short Stories #2',
                'author' => 'Sir Arthur Conan Doyle',
                'publisher' => 'Gramedia Pustaka Utama',
                'pages' => null,
                'category' => 'English Classic'
            ],

            [
                'title' => 'Peter Pan',
                'author' => 'J.M. Barrie',
                'publisher' => 'Gramedia Pustaka Utama',
                'pages' => null,
                'category' => 'English Classic'
            ],

            [
                'title' => 'A Little Princess',
                'author' => 'Frances Hodgson Burnett',
                'publisher' => 'Gramedia Pustaka Utama',
                'pages' => null,
                'category' => 'English Classic'
            ],

            [
                'title' => 'Alice in Wonderland',
                'author' => 'Lewis Carroll',
                'publisher' => 'Baronet Books',
                'pages' => null,
                'category' => 'English Classic'
            ],

            [
                'title' => 'Les Miserables',
                'author' => 'Victor Hugo',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'The Secret Garden',
                'author' => 'Frances Hodgson Burnett',
                'publisher' => 'HarperTrophy',
                'pages' => null,
                'category' => 'English Classic'
            ],

            [
                'title' => 'Catatan Harian Anne Frank',
                'author' => 'Anne Frank',
                'publisher' => 'Jalasutra',
                'pages' => 502,
                'category' => 'Memoar'
            ],

            [
                'title' => 'The Giver',
                'author' => 'Lois Lowry',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'My First Britannica: The Earth and Earth Sciences 1',
                'author' => 'Sally Symes',
                'publisher' => null,
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Ensiklopedia Sains',
                'author' => null,
                'publisher' => 'Bhuana Ilmu Populer',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Spot 50 Rocks & Minerals',
                'author' => 'Richard Kelly',
                'publisher' => 'Miles Kelly',
                'pages' => 56,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'The Giver',
                'author' => 'Lois Lowry',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => "Help! I'm Trapped In My Gym Teacher's Body",
                'author' => null,
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => "Mr Midnight #1: Madman's Mansion",
                'author' => 'James Lee',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'Junie B. Jones is Captain Field Day',
                'author' => 'Barbara Park',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => "You're a Brave Man, Julius Zimmerman",
                'author' => null,
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'The Secret Garden',
                'author' => 'Frances Hodgson Burnett',
                'publisher' => 'HarperTrophy',
                'pages' => null,
                'category' => 'English Classic'
            ],

            [
                'title' => 'Spindles of The Dusty Range 1',
                'author' => 'Barry Chant',
                'publisher' => 'Tabor Publications',
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'The Mystery of Tally-Ho Cottage 12',
                'author' => 'Enid Blyton',
                'publisher' => 'Hodder',
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Paddington Help Out',
                'author' => 'Michael Bond',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'The Baby-Sitters Club | Snowbound',
                'author' => 'Ann M. Martin',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Komik Kitab Suci 4',
                'author' => null,
                'publisher' => 'Yayasan Ini',
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'The Mystery of the Spiteful Letters',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'The Classic Enid Blyton Collection: The Find-Outers - The Mystery of the Burnt Cottage',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Tip & Trik Jago Main Rubik',
                'author' => 'Wicaksono Adi',
                'publisher' => null,
                'pages' => null,
                'category' => 'Hobi'
            ],

            [
                'title' => 'Giants Around the Corner',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Sneezing Powder',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Lima Sekawan Rahasia di Pulau Kirrin 6',
                'author' => null,
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'The Walkaway Shoes',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'Enid Blyton Collection: Holiday Adventures',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => '3 Books in 1: The Famous Five Collection 1',
                'author' => 'Enid Blyton',
                'publisher' => 'Hodder',
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => '3 Books in 1: Malory Towers Collection 4',
                'author' => 'Enid Blyton',
                'publisher' => 'Hodder',
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => '3 Books in 1: The Secret Seven Collection 2',
                'author' => 'Enid Blyton',
                'publisher' => 'Hodder',
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'The Mystery of the Spiteful Letters',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'The Classic Enid Blyton Collection: The Find-Outers - The Mystery of the Burnt Cottage',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'Giants Around the Corner',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'Sneezing Powder',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'Lima Sekawan Rahasia di Pulau Kirrin 6',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],
            
            [
                'title' => 'Enid Blyton Collection: Holiday Adventures Copy 1',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'Enid Blyton Collection: Holiday Adventures Copy 2',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'Enid Blyton Collection: Holiday Adventures Copy 3',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'Enid Blyton Collection: Holiday Adventures Copy 4',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'Enid Blyton Collection: Holiday Adventures Copy 5',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'Enid Blyton Collection: Holiday Adventures Copy 6',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'Enid Blyton Collection: Holiday Adventures Copy 7',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'Enid Blyton Collection: Holiday Adventures Copy 8',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'Enid Blyton Collection: Holiday Adventures Copy 9',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'Enid Blyton Collection: Holiday Adventures Copy 10',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'My First Britannica: The Earth and Earth Sciences 1',
                'author' => 'Sally Symes',
                'publisher' => null,
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'My First Britannica: Physical Sciences and Technology 2',
                'author' => 'Sally Symes',
                'publisher' => null,
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'My First Britannica: The Arts 3',
                'author' => 'Sally Symes',
                'publisher' => null,
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'My First Britannica: People in History 4',
                'author' => 'Sally Symes',
                'publisher' => null,
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'My First Britannica: Folklore and Religions 5',
                'author' => 'Sally Symes',
                'publisher' => null,
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'My First Britannica: Europe 6',
                'author' => 'Sally Symes',
                'publisher' => null,
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'My First Britannica: Asia, Australia, and New Zealand 7',
                'author' => 'Sally Symes',
                'publisher' => null,
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'My First Britannica: Africa 8',
                'author' => 'Sally Symes',
                'publisher' => null,
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'My First Britannica: The Americas 9',
                'author' => 'Sally Symes',
                'publisher' => null,
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'My First Britannica: Plants 10',
                'author' => 'Sally Symes',
                'publisher' => null,
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'My First Britannica: Birds, Insects, Reptiles, and Aquatic Life 11',
                'author' => 'Sally Symes',
                'publisher' => null,
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'My First Britannica: Mammals 12',
                'author' => 'Sally Symes',
                'publisher' => null,
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'My First Britannica: Reference Guide and Index 13',
                'author' => 'Sally Symes',
                'publisher' => null,
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'The New Junior World Encyclopedia 1',
                'author' => null,
                'publisher' => 'Bay Books',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'The New Junior World Encyclopedia 2',
                'author' => null,
                'publisher' => 'Bay Books',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'The New Junior World Encyclopedia 3',
                'author' => null,
                'publisher' => 'Bay Books',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'The New Junior World Encyclopedia 4',
                'author' => null,
                'publisher' => 'Bay Books',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'The New Junior World Encyclopedia 5',
                'author' => null,
                'publisher' => 'Bay Books',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'The New Junior World Encyclopedia 6',
                'author' => null,
                'publisher' => 'Bay Books',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'The New Junior World Encyclopedia 7',
                'author' => null,
                'publisher' => 'Bay Books',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'The New Junior World Encyclopedia 8',
                'author' => null,
                'publisher' => 'Bay Books',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'The New Junior World Encyclopedia 9',
                'author' => null,
                'publisher' => 'Bay Books',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Pustaka Alam LIFE: Hutan',
                'author' => null,
                'publisher' => 'Tira Pustaka',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Pustaka Alam LIFE: Bumi',
                'author' => null,
                'publisher' => 'Tira Pustaka',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Pustaka Alam LIFE: Asia Tropik',
                'author' => null,
                'publisher' => 'Tira Pustaka',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Pustaka Alam LIFE: Ekologi',
                'author' => null,
                'publisher' => 'Tira Pustaka',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Pustaka Alam LIFE: Mamalia',
                'author' => null,
                'publisher' => 'Tira Pustaka',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Pustaka Alam LIFE: Gunung',
                'author' => null,
                'publisher' => 'Tira Pustaka',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Pustaka Alam LIFE: Burung',
                'author' => null,
                'publisher' => 'Tira Pustaka',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Pustaka Alam LIFE: Kutub',
                'author' => null,
                'publisher' => 'Tira Pustaka',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Pustaka Alam LIFE: Laut',
                'author' => null,
                'publisher' => 'Tira Pustaka',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Pustaka Alam LIFE: Gurun',
                'author' => null,
                'publisher' => 'Tira Pustaka',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Pustaka Alam LIFE: Tetumbuhan',
                'author' => null,
                'publisher' => 'Tira Pustaka',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Pustaka Alam LIFE: Alam Semesta',
                'author' => null,
                'publisher' => 'Tira Pustaka',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Life Processes 1: Adaptations',
                'author' => 'Steve Parker',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Life Processes 2: Cells and Systems',
                'author' => 'Holly Wallace',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Life Processes 3: Classification',
                'author' => 'Holly Wallace',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Life Processes 4: Food Chains and Webs',
                'author' => 'Holly Wallace',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Life Processes 5: Life Cycles',
                'author' => 'Holly Wallace',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Life Processes 6: Survival and Change',
                'author' => 'Steve Parker',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'InfoSearch: Desert Food Chains 1',
                'author' => 'Richard & Louise Spilsbury',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'InfoSearch: Grassland Food Chains 2',
                'author' => 'Richard & Louise Spilsbury',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'InfoSearch: Mountain Food Chains 3',
                'author' => 'Richard & Louise Spilsbury',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'InfoSearch: Ocean Food Chains 4',
                'author' => 'Richard & Louise Spilsbury',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'InfoSearch: Rainforest Food Chains 5',
                'author' => 'Richard & Louise Spilsbury',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'InfoSearch: River Food Chains 6',
                'author' => 'Richard & Louise Spilsbury',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'InfoSearch: A Bright Idea 1',
                'author' => 'Tristan Boyer Binns',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'InfoSearch: Clean Planet 2',
                'author' => 'Tristan Boyer Binns',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'InfoSearch: Down the Drain 3',
                'author' => 'Anita Ganeri & Chris Oxlade',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'InfoSearch: Something Old, Something New 4',
                'author' => 'Anita Ganeri',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'InfoSearch: The Great Outdoors 5',
                'author' => 'Richard Spilsbury',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'InfoSearch: Animal Groups | Life in a Colony - Ants 1',
                'author' => 'Richard & Louise Spilsbury',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'InfoSearch: Animal Groups | Life in a Troop - Chimpanzees 2',
                'author' => 'Richard & Louise Spilsbury',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'InfoSearch: Animal Groups | Life in a Flock - Crows 3',
                'author' => 'Richard & Louise Spilsbury',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'InfoSearch: Animal Groups | Life in a Pride - Lions 4',
                'author' => 'Richard & Louise Spilsbury',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'InfoSearch: Animal Groups | Life in a Pod - Whales 5',
                'author' => 'Richard & Louise Spilsbury',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'InfoSearch: Animal Groups | Life in a Pack - Wolves 6',
                'author' => 'Richard & Louise Spilsbury',
                'publisher' => 'Heinemann',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'World Book: A Look At... Inventions and Discoveries',
                'author' => null,
                'publisher' => null,
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'World Book: A Look At... Wonders of the World Copy 1',
                'author' => null,
                'publisher' => null,
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'World Book: A Look At... Wonders of the World Copy 2',
                'author' => null,
                'publisher' => null,
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Ensiklopedia Sains',
                'author' => null,
                'publisher' => 'Bhuana Ilmu Populer',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Ensiklopedia Geografi Dengan Atlas Dunia Lengkap Edisi Revisi',
                'author' => null,
                'publisher' => 'Bhuana Ilmu Populer',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Ensiklopedia Mini Alam Semesta: Sebuah Perjalanan Mengungkap Semesta Raya',
                'author' => null,
                'publisher' => 'Elex Media Komputindo',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Ensiklopedia Teknologi Komputer',
                'author' => null,
                'publisher' => null,
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Animal Disguises',
                'author' => null,
                'publisher' => 'Kingfisher',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Dinosaur Park',
                'author' => null,
                'publisher' => 'National Geography',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Why? United Kingdom',
                'author' => null,
                'publisher' => 'Elex Media Komputindo',
                'pages' => null,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Spot 50 Rocks & Minerals',
                'author' => 'Richard Kelly',
                'publisher' => 'Miles Kelly',
                'pages' => 56,
                'category' => 'Encyclopedia'
            ],

            [
                'title' => 'Detik-Detik Ujian Nasional Bahasa Indonesia untuk SMP/MTs (17 Buku)',
                'author' => 'Uti Darmawati, Y. Budi Artati',
                'publisher' => 'PT Penerbit Intan Pariwara',
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Detik-Detik UNBK Bahasa Inggris untuk SMA/MA (2 Buku)',
                'author' => 'Bachitar Bima M., Cicik Kurniawati, Susiningsih',
                'publisher' => 'Intan Pariwara',
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Detik-Detik Ujian Nasional Bahasa Indonesia untuk SMA/MA (3 Buku)',
                'author' => 'Ika Setiyaningsih, Meita Sandra Santhi',
                'publisher' => 'PT Penerbit Intan Pariwara',
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Detik-Detik Ujian Nasional Bahasa Inggris untuk SMP/MTs (16 Buku)',
                'author' => 'Prasetya Adhi Wardhana, Susiningsih',
                'publisher' => 'PT Penerbit Intan Pariwara',
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Detik-Detik Ujian Nasional Ilmu Pengetahuan Alam untuk SMP/MTs (7 Buku)',
                'author' => 'Rumiyati, Risdiyani Chasanah, Pendra Heryanto',
                'publisher' => 'PT Penerbit Intan Pariwara',
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Detik-Detik USBN Ekonomi SMA/MA (2 Buku)',
                'author' => 'Kartika Sari, Yunita Novasari',
                'publisher' => 'PT Penerbit Intan Pariwara',
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Kunci Jawaban dan Pembahasan Detik UN SMP/MTs (2 Buku)',
                'author' => null,
                'publisher' => 'PT Penerbit Intan Pariwara',
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Erlangga X-Press USBN 2018 SMP/MTs Ilmu Pengetahuan Sosial',
                'author' => 'Tim Progresif',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Erlangga X-Press UN 2018 untuk SMA/MA Geografi Program IPS',
                'author' => 'Tim Progresif',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Erlangga X-Press US SMP/MTs PPKn',
                'author' => 'Tim Progresif',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Erlangga X-Press US SMA/MA Geografi Kelompok Peminatan',
                'author' => 'Tim Progresif',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Erlangga X-Press US SMA/MA PPKn Kelompok Wajib',
                'author' => 'Tim Progresif',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Erlangga X-Press US SMA/MA Bahasa Indonesia Kelompok Wajib',
                'author' => 'Tim Progresif',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Erlangga X-Press US SMA/MA Sejarah Indonesia Kelompok Wajib',
                'author' => 'Tim Progresif',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Erlangga X-Press US SMA/MA Ekonomi Kelompok Peminatan',
                'author' => 'Tim Progresif',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Erlangga X-Press US SMA/MA Sosiologi Kelompok Peminatan',
                'author' => 'Tim Progresif',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Erlangga X-Press US SMA/MA Fisika Kelompok Peminatan',
                'author' => 'Tim Progresif',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Top No.1 Pendalaman Materi Kimia SMA Kelas X, XI, XII',
                'author' => null,
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Buku Pintar Praktikum Kimia SMP/MTs Kelas 7, 8, 9',
                'author' => null,
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Termodinamika',
                'author' => 'Tim Penulis Buku Olimpiade Fisika',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Kimia 2',
                'author' => 'Tim Penulis Buku Olimpiade Kimia',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Super Jenius Lulusan UN Bahasa Indonesia SMP/MTs',
                'author' => 'Tim Grasindo',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Try Out UN Ujian Nasional SMP/MTs 2011',
                'author' => 'Guru Indonesia Cerdas',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => '9 In 1 Plus Top Peringkat Satu UN SMP/MTs 2015',
                'author' => 'Tim Tentor Nusantara',
                'publisher' => 'Asoka Aksara',
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Detik-Detik Ujian Nasional Bahasa Indonesia untuk SMP/MTs',
                'author' => 'Uti Darmawati, Y. Budi Ariati',
                'publisher' => 'PT Penerbit Intan Pariwara',
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Detik-Detik Ujian Nasional Matematika untuk SMP/MTs',
                'author' => 'Nnganingsih Suparno, Noviana Endah Santoso',
                'publisher' => 'PT Penerbit Intan Pariwara',
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Erlangga X-Press US SMP/MTs Sejarah Indonesia',
                'author' => 'A. Indradi',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Erlangga X-Press US SMP/MTs Bahasa Inggris',
                'author' => 'Nur Zaida',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Erlangga X-Press US SMP/MTs IPS | Ilmu Pengetahuan Sosial',
                'author' => 'Tim Progresif',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Mekanik dan Fluida 1',
                'author' => 'Tim Penulis Buku Olimpiade Fisika',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Mekanik dan Fluida 2',
                'author' => 'Tim Penulis Buku Olimpiade Fisika',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Suhu dan Termodinamika',
                'author' => 'Tim Penulis Buku Olimpiade Fisika',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Ilmu Kimia Lanjutan',
                'author' => 'Tim Penulis Buku Olimpiade Kimia',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Gelombang dan Optik',
                'author' => 'Tim Penulis Buku Olimpiade Fisika',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Kimia 1',
                'author' => 'Tim Penulis Buku Olimpiade Kimia',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Biologi',
                'author' => null,
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Getaran dan Gelombang',
                'author' => 'Tim Penulis Buku Olimpiade Fisika',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Listrik dan Magnet',
                'author' => 'Tim Penulis Buku Olimpiade Fisika',
                'publisher' => null,
                'pages' => null,
                'category' => 'Pendidikan'
            ],

            [
                'title' => 'Pandangan Kristen Tentang Kematian',
                'author' => 'Gladys Hunt',
                'publisher' => null,
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Cara Memperdalam dan Memperkaya Kehidupan Doa Anda',
                'author' => 'O. Hallesby',
                'publisher' => null,
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => '31 Hari Pujian | Menikmati Hadirat Allah dengan Cara Baru',
                'author' => 'Ruth Myers & Warren Myers',
                'publisher' => null,
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Segala Sesuatu Mungkin Melalui Doa',
                'author' => 'Charles L.',
                'publisher' => null,
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Yakin Di Dalam Kristus',
                'author' => 'Warren W. Wiersbe',
                'publisher' => null,
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Mengasuh Anak Mengasihi Tuhan',
                'author' => 'Susan S. Wiriadiata',
                'publisher' => null,
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Nama-Nama Pribadi Dalam Alkitab',
                'author' => 'Drs. I. I. de Heer, P.S. Naiposops',
                'publisher' => 'BPK-GM',
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Tafsir Roma Bagi Pekerja',
                'author' => 'Donny Adi Wiguna',
                'publisher' => null,
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Frodo & Harry',
                'author' => 'Baehr & Snyder',
                'publisher' => 'Crossway',
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Our Guilty Silence',
                'author' => 'John R.W. Stott',
                'publisher' => null,
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Treasure in Heaven',
                'author' => 'Buntai',
                'publisher' => null,
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Prayer',
                'author' => 'O. Hallesby',
                'publisher' => null,
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Temptations Men Face',
                'author' => 'Eisenman',
                'publisher' => 'IVP',
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Pop Goes The Gospel',
                'author' => 'John Blanchard',
                'publisher' => null,
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'The End Of The World',
                'author' => 'Bruce Mile',
                'publisher' => null,
                'pages' => null,
                'category' => 'Rohani'
            ],

            [
                'title' => 'George Mueller: He Dared to Trust God for the Needs of Countless Orphans',
                'author' => 'Faith Coxe Bailey',
                'publisher' => 'Moody Press',
                'pages' => 159,
                'category' => 'Rohani'
            ],

            [
                'title' => 'D.L. Moody: The Greatest Evangelist of the Nineteenth Century',
                'author' => 'Faith Coxe Bailey',
                'publisher' => 'Moody Press',
                'pages' => 160,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Treasures Of The Snow',
                'author' => 'Patricia St. John',
                'publisher' => 'Moody Press',
                'pages' => 232,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Star of Light',
                'author' => 'Patricia St. John',
                'publisher' => 'Moody Press',
                'pages' => 176,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Little Pilgrim\'s Progress: From John Bunyan\'s Classic',
                'author' => 'Helen L. Taylor',
                'publisher' => 'Moody Press',
                'pages' => 336,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Christian with Courage',
                'author' => 'Ruth Johnson Jay',
                'publisher' => 'Accelerated Christian Education',
                'pages' => 146,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Silas Marner',
                'author' => 'George Eliot',
                'publisher' => 'Accelerated Christian Education',
                'pages' => 262,
                'category' => 'Rohani'
            ],

            [
                'title' => 'God\'s Tribesman',
                'author' => 'Marti Hefley & James C. Hefley',
                'publisher' => 'Accelerated Christian Education',
                'pages' => 144,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Alexi\'s Secret Mission',
                'author' => 'Anita Deyneka',
                'publisher' => 'Accelerated Christian Education',
                'pages' => 126,
                'category' => 'Rohani'
            ],

            [
                'title' => 'The Little Green Frogs',
                'author' => 'Beth Coombe Harris',
                'publisher' => 'Accelerated Christian Education',
                'pages' => 125,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Summer Fun With Ace and Christi',
                'author' => 'Grace Whitehart',
                'publisher' => 'Accelerated Christian Education',
                'pages' => 151,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Twice Fred',
                'author' => 'Patricia St. John',
                'publisher' => 'Accelerated Christian Education',
                'pages' => 256,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Christians Courageous (7 Buku)',
                'author' => 'Anne E. Schraff',
                'publisher' => 'Accelerated Christian Education',
                'pages' => 70,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Children\'s Missionary Library (2 Buku)',
                'author' => 'Vernon Howard & Alice Bostrom',
                'publisher' => 'Accelerated Christian Education',
                'pages' => 172,
                'category' => 'Rohani'
            ],

            [
                'title' => 'North to Amaroqvik',
                'author' => 'Cheryl M. Ufkin',
                'publisher' => 'Accelerated Christian Education',
                'pages' => 90,
                'category' => 'Rohani'
            ],

            [
                'title' => 'In His Steps',
                'author' => 'Charles Monroe Sheldon',
                'publisher' => 'Accelerated Christian Education',
                'pages' => 253,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Ann of Ava',
                'author' => 'Ethel Daniels Hubbard',
                'publisher' => 'Accelerated Christian Education',
                'pages' => 185,
                'category' => 'Rohani'
            ],

            [
                'title' => 'When Science Fails',
                'author' => 'John Hudson Tiner',
                'publisher' => 'Accelerated Christian Education',
                'pages' => 136,
                'category' => 'Rohani'
            ],

            [
                'title' => 'The Hiding Place: The Triumphant True Story of Corrie Ten Boom',
                'author' => 'Corrie Ten Boom, John Sherrill, Elizabeth Sherrill',
                'publisher' => 'Bantam Books',
                'pages' => 242,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Through Gates of Splendor',
                'author' => 'Elisabeth Elliot',
                'publisher' => 'Tyndale Momentum',
                'pages' => 274,
                'category' => 'Rohani'
            ],

            [
                'title' => 'God\'s Adventurer: A Story of Daring, Danger and Dependence on God',
                'author' => 'Phyllis Thompson',
                'publisher' => 'Harold Shaw Publications',
                'pages' => 112,
                'category' => 'Rohani'
            ],

            [
                'title' => 'George Mueller: A Biography',
                'author' => 'Faith Coxe Bailey',
                'publisher' => 'Moody Press',
                'pages' => 159,
                'category' => 'Rohani'
            ],

            [
                'title' => 'Walt Disney',
                'author' => 'Wang I E',
                'publisher' => null,
                'pages' => null,
                'category' => 'Biografi'
            ],

            [
                'title' => 'Johann Sebastian Bach',
                'author' => 'Lin Jui Hwa',
                'publisher' => null,
                'pages' => null,
                'category' => 'Biografi'
            ],

            [
                'title' => 'Wolfgang Amadeus Mozart',
                'author' => 'Ciang Su Ci',
                'publisher' => null,
                'pages' => null,
                'category' => 'Biografi'
            ],

            [
                'title' => 'Johann Sebastian Bach (Biography)',
                'author' => 'Lin Jui Hwa',
                'publisher' => null,
                'pages' => null,
                'category' => 'Biografi'
            ],

            [
                'title' => 'Napoleon Bonaparte',
                'author' => 'Lai Ie Seng',
                'publisher' => null,
                'pages' => null,
                'category' => 'Biografi'
            ],

            [
                'title' => 'Marie Curie',
                'author' => 'Wan Ie So',
                'publisher' => null,
                'pages' => null,
                'category' => 'Biografi'
            ],

            [
                'title' => 'Florence Nightingale',
                'author' => 'Sie Swe Cen',
                'publisher' => null,
                'pages' => null,
                'category' => 'Biografi'
            ],

            [
                'title' => 'Louis Pasteur',
                'author' => 'Animik Wori I',
                'publisher' => null,
                'pages' => null,
                'category' => 'Biografi'
            ],

            [
                'title' => 'William Shakespeare: Sastrawan Ternama',
                'author' => 'Jony Wong Susanto',
                'publisher' => 'Elex Media Komputindo',
                'pages' => 116,
                'category' => 'Biografi'
            ],

            [
                'title' => 'Thomas Alfa Edison',
                'author' => 'Lie Ching Ie',
                'publisher' => null,
                'pages' => null,
                'category' => 'Biografi'
            ],

            [
                'title' => 'The Autobiography of Nelson Mandela: Long Walk to Freedom',
                'author' => null,
                'publisher' => 'Back Bay Books',
                'pages' => null,
                'category' => 'Biografi'
            ],

            [
                'title' => 'Jejak Yang Melampaui Zaman',
                'author' => 'Hatta',
                'publisher' => 'KPG',
                'pages' => null,
                'category' => 'Biografi'
            ],

            [
                'title' => 'Australia Travel Story Sydney Blue Mountain',
                'author' => 'Maria Fransisa Merinda',
                'publisher' => 'Elex Media Komputindo',
                'pages' => null,
                'category' => 'Biografi'
            ],

            [
                'title' => 'Treasure Island',
                'author' => 'Robert Louis Stevenson',
                'publisher' => 'Gramedia Pustaka Utama',
                'pages' => null,
                'category' => 'English Classic'
            ],

            [
                'title' => 'Sherlock Holmes Short Stories #2',
                'author' => 'Sir Arthur Conan Doyle',
                'publisher' => 'Gramedia Pustaka Utama',
                'pages' => null,
                'category' => 'English Classic'
            ],

            [
                'title' => 'Peter Pan',
                'author' => 'J.M. Barrie',
                'publisher' => 'Gramedia Pustaka Utama',
                'pages' => null,
                'category' => 'English Classic'
            ],

            [
                'title' => 'A Little Princess',
                'author' => 'Frances Hodgson Burnett',
                'publisher' => 'Gramedia Pustaka Utama',
                'pages' => null,
                'category' => 'English Classic'
            ],

            [
                'title' => 'Alice in Wonderland',
                'author' => 'Lewis Carroll',
                'publisher' => 'Baronet Books',
                'pages' => null,
                'category' => 'English Classic'
            ],

            [
                'title' => 'The Secret Garden',
                'author' => 'Frances Hodgson Burnett',
                'publisher' => 'HarperTrophy',
                'pages' => null,
                'category' => 'English Classic'
            ],

            [
                'title' => 'The Swiss Family Robinson',
                'author' => 'Johann David Wyss',
                'publisher' => 'Sterling Publications',
                'pages' => 345,
                'category' => 'English Classic'
            ],

            [
                'title' => 'The Rime of the Ancient Mariner',
                'author' => 'Samuel Taylor Coleridge',
                'publisher' => 'Dover Publications',
                'pages' => 77,
                'category' => 'English Classic'
            ],

            [
                'title' => 'Les Miserables',
                'author' => 'Victor Hugo',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'The Giver',
                'author' => 'Lois Lowry',
                'publisher' => null,
                'pages' => null,
                'category' => 'Fiction'
            ],

            [
                'title' => 'The Lost Princess of Oz',
                'author' => null,
                'publisher' => null,
                'pages' => null,
                'category' => 'Fiction'
            ],

            [
                'title' => 'How to Fight a Dragon\'s Fury',
                'author' => 'Cressida Cowell',
                'publisher' => null,
                'pages' => 499,
                'category' => 'Fantasy'
            ],

            [
                'title' => 'The Magical Worlds of Narnia',
                'author' => 'David Colbert',
                'publisher' => 'Gramedia Pustaka Utama',
                'pages' => null,
                'category' => 'Fantasy'
            ],

            [
                'title' => 'Billionaire Boy',
                'author' => 'David Walliams',
                'publisher' => null,
                'pages' => null,
                'category' => 'Fiction'
            ],

            [
                'title' => 'The Last of the Mohicans',
                'author' => 'Fenimore Cooper',
                'publisher' => null,
                'pages' => null,
                'category' => 'English Classic'
            ],

            [
                'title' => 'Serdadu Kumbang',
                'author' => 'Rain Chudori',
                'publisher' => null,
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'Perfect Princess',
                'author' => 'Meg Cabot',
                'publisher' => 'Gramedia Pustaka Utama',
                'pages' => null,
                'category' => 'Novel'
            ],

            [
                'title' => 'Mr Midnight #1: Madman\'s Mansion',
                'author' => 'James Lee',
                'publisher' => null,
                'pages' => null,
                'category' => 'Fiction'
            ],

            [
                'title' => 'The Nightmare Room: Liar Liar',
                'author' => 'R. L. Stine',
                'publisher' => 'Gramedia Pustaka Utama',
                'pages' => null,
                'category' => 'Horror'
            ],

            [
                'title' => 'Fusion Fire',
                'author' => 'Kathy Tyers',
                'publisher' => null,
                'pages' => null,
                'category' => 'Science Fiction'
            ],

            [
                'title' => 'Danzig Passage',
                'author' => 'Theonene',
                'publisher' => null,
                'pages' => null,
                'category' => 'Fiction'
            ],
                
            [
                'title' => 'Junie B. Jones Is (Almost) a Flower Girl',
                'author' => 'Barbara Park',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Paddington Helps Out',
                'author' => 'Michael Bond',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'The Baby-Sitters Club: Snowbound',
                'author' => 'Ann M. Martin',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'The Mystery of Tally-Ho Cottage',
                'author' => 'Enid Blyton',
                'publisher' => 'Hodder',
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'The Mystery of the Spiteful Letters',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'The Mystery of the Burnt Cottage',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Giants Around the Corner',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Sneezing Powder',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Lima Sekawan: Rahasia di Pulau Kirrin',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => '3 Books in 1: The Famous Five Collection 1',
                'author' => 'Enid Blyton',
                'publisher' => 'Hodder',
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => '3 Books in 1: Malory Towers Collection 4',
                'author' => 'Enid Blyton',
                'publisher' => 'Hodder',
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => '3 Books in 1: The Secret Seven Collection 2',
                'author' => 'Enid Blyton',
                'publisher' => 'Hodder',
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'The Walkaway Shoes',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Enid Blyton Collection: Holiday Adventures Copy 1',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Enid Blyton Collection: Holiday Adventures Copy 2',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Enid Blyton Collection: Holiday Adventures Copy 3',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Enid Blyton Collection: Holiday Adventures Copy 4',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Enid Blyton Collection: Holiday Adventures Copy 5',
                'author' => 'Enid Blyton',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'The Baby-Sitters Club: Good-Bye Stacey, Good-Bye',
                'author' => 'Ann M. Martin',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Baby-Sitters Little Sister: Karen\'s Easter Parade',
                'author' => 'Ann M. Martin',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Baby-Sitters Little Sister: Karen\'s Witch',
                'author' => 'Ann M. Martin',
                'publisher' => null,
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Tobias Beraksi Kembali',
                'author' => 'Animorphs',
                'publisher' => 'Gramedia Pustaka Utama',
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Anggota Baru Animorphs',
                'author' => 'Animorphs',
                'publisher' => 'Gramedia Pustaka Utama',
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Spindles and The Orphan',
                'author' => 'Barry Chant',
                'publisher' => 'Tabor Publications',
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Spindles and The Crocodile',
                'author' => 'Barry Chant',
                'publisher' => 'Tabor Publications',
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Spindles and The Wombat',
                'author' => 'Barry Chant',
                'publisher' => 'Tabor Publications',
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Spindles and The Eagles',
                'author' => 'Barry Chant',
                'publisher' => 'Tabor Publications',
                'pages' => null,
                'category' => 'Children'
            ],

            [
                'title' => 'Spindles and The Children',
                'author' => 'Barry Chant',
                'publisher' => 'Tabor Publications',
                'pages' => null,
                'category' => 'Children'
            ],

            
            
        ];

        foreach ($books as $data) {

            $category = Category::firstOrCreate([
                'name' => $data['category']
            ]);

            Book::firstOrCreate(
                ['title' => $data['title']], // cegah duplikasi
                [
                    'author' => $data['author'],
                    'publisher' => $data['publisher'],
                    'pages' => $data['pages'],
                    'category_id' => $category?->id,
                    'stock' => 3,
                    'location' => 'Rak ' . $data['category'],
                    'created_at' => now(),
                    'updated_at' => now()
                ]
            );
        }
    }
}
