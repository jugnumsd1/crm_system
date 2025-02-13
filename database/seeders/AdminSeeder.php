<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        User::updateOrCreate(
            ['email' => 'admin@admin.com'], 
            [
                'name' => 'Admin',
                'password' => Hash::make('password'), 
                'is_admin' => true, 
            ]
        );
    }
}
