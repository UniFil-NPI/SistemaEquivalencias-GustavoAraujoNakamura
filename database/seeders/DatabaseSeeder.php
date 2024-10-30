<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        Eloquent::unguard();

        $path = 'database/seed/script.sql';
        DB::unprepared(file_get_contents($path));
        $this->command->info('Grades e Disciplinas de CC inseridas!');
    }
}
