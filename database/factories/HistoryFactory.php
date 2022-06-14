<?php
/** @var \Illuminate\Database\Eloquent\Factory $factory */
use Faker\Generator as Faker;

$factory->define(App\History::class, function (Faker $faker) {
    return [
        'title'=>$faker->title,
        'slug'=>$faker->slug,
        'description'=>$faker->text(),
        'type'=>$faker->randomNumber(),
        'file_id'=>$faker


    ];
});
