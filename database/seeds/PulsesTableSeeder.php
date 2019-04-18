<?php

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use App\Pulse;

class PulsesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=1; $i < 30; $i++)
        {
            $now = Carbon::now();
            $pulse = new Pulse();
            $pulse->value = rand(85, 120);
            $pulse->created_at = $now->subDays($i);
            $pulse->save();
        }
    }
}
