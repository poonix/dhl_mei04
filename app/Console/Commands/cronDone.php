<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Http\Controllers\Model\Transaction;
use DateTime;

class cronDone extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'command:done';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Cek waktu leave setiap menit';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
       // $this->middleware('logincheck');
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $getexits = Transaction::getStatusLeave();
       // print_r($getexits[0]);
        $now = new DateTime();
        $waktu = $now->format('Y-m-d H:i:s');

        foreach ($getexits as $getexit) {
            $strexit1 = strtotime($getexit->exit_time)+((60*60)-30); //var min
            $strexit2 = strtotime($getexit->exit_time)+((60*60)+30); //var max

            $strexit = strtotime($getexit->exit_time)+(60*60); //var exit
            $strnow = strtotime($waktu); // var vow

            $id_dms = $getexit->id_dms_form;
            $nama = $getexit->driver_name;


            if ($strnow >= $strexit) {  //=========================per detik berhasil
            //if ($strnow >= $strexit1 && $strnow <= $strexit2) { //==================per menit berhasil

                $done = Transaction::where('id_dms_form','=',$id_dms)->first();
                $done->status = 8;
                $done->save();

            }
        }
    }
}
