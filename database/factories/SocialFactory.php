<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Social;
use Faker\Generator as Faker;

$factory->define(Social::class, function (Faker $faker) {
    return [
        'user_id'   =>  rand(1,25),
        'name'  =>$faker->domainName
    ];
});
