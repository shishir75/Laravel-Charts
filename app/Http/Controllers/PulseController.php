<?php

namespace App\Http\Controllers;

use App\Charts\PulseChart;
use App\Pulse;
use Illuminate\Http\Request;

class PulseController extends Controller
{
    public function index()
    {
       $pulse_85_to_90 = Pulse::whereBetween('value', [85, 90])->count();
       $pulse_91_to_100 = Pulse::whereBetween('value', [91, 100])->count();
       $pulse_101_to_110 = Pulse::whereBetween('value', [101, 110])->count();
       $pulse_111_to_120 = Pulse::whereBetween('value', [11, 120])->count();


        $chart = new PulseChart;
        $chart->labels(['85 to 90', '91 to 100', '101 to 110', '111 to 120']);
        $dataset = $chart->dataset('My Dataset', 'pie', [$pulse_85_to_90, $pulse_91_to_100, $pulse_101_to_110, $pulse_111_to_120]);
        $dataset->backgroundColor(collect(['#7158e2','#3ae374', '#ff3838', '#f4a442']));
        $dataset->color(collect(['#7d5fff','#32ff7e', '#ff4d4d', '#f4a442']));
        $dataset->fill(true);
        //$dataset->lineTension(10);
        //$dataset->dashed([5]);
        $chart->height(400);

        //$chart->labels(['One', 'Two', 'Three', 'Four']);
        //$chart->dataset('My dataset 2', 'pie', [4, 3, 2, 1]);


        //$chart->barWidth(100);
        $chart->title('My Chart', 20, '#666', true, "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif");

        $chart->displayAxes(false);

        //$chart->minimalist(true);

        $chart->displayLegend(true);

        $chart->options([
            'tooltip' => [
                'show' => false // or false, depending on what you want.
            ]
        ]);



        $chart->loader(true);
        $chart->loaderColor('#3ae374');

        return view('pulse.index', compact('pulses', 'chart'));
    }
}
