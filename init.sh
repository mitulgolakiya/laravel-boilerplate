#!/usr/bin/env bash
composer require barryvdh/laravel-ide-helper:dev-master mitulgolakiya/laravel-api-generator:dev-master
cd public
bower install bootstrap font-awesome admin-lte moment --save
cd ..
php artisan ide-helper:generate
php artisan vendor:publish --provider="Mitul\Generator\GeneratorServiceProvider"
php artisan mitul.generator:publish