<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Book;
use Faker\Generator as Faker;

$factory->define(Book::class, function (Faker $faker) {
    return [
        // 'photo' => $faker->sentence,
        'photo' => $faker->image('public/storage/images',640,480, null, false),
		'book_name' => $faker->sentence,
		'price' => $faker->sentence,
		'writer_name' => $faker->sentence,
		'booktype_id' => rand(1, 5),
    ];
});
