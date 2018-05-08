<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Http\Controllers\Model\Transaction;
use App\Http\Controllers\Model\Sms_log;
use DateTime;
use GuzzleHttp;

class cronSms extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'command:sms';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Cek waktu PLT setiap menit';

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
        $getplts = Transaction::getWaitingGate()->where('is_sms','=',0);
       // print_r($getplts[0]);
        $now = new DateTime();
        $waktu = $now->format('Y-m-d H:i:s');

         foreach ($getplts as $getplt) {
            if($getplt->waiting_time == null)
            {}
            else
            {
                $strplt = strtotime($getplt->waiting_time)-(15*60);
                $strnow = strtotime($waktu);

                $no_telp = $getplt->driver_phone;
                $plat = $getplt->plat_no;
                $driver = $getplt->driver_name;
                $project = $getplt->master_project_name;
                $waiting = $getplt->waiting_time;
                $id_dms = $getplt->id_dms_form; 

                //($val >= $min && $val <= $max)
                //if (strplt1=strplt1) {
                if ($strnow > $strplt) {

                    $this->testapi($no_telp,$plat,$driver,$project,$id_dms);

                }
            }

           // print_r($strplt." ".$strnow."--");
            //echo $strnow."  plt1=".$strplt1." plt2=".$strplt2;
         }
    }

    public function reminder_sms(){
        /*$getplts = Transaction::getWaitingGate();
       // print_r($getplts[0]);
        $now = new DateTime();
        $waktu = $now->format('Y-m-d H:i:s');

         foreach ($getplts as $getplt) {
            $strplt = strtotime($getplt->waiting_time)-(15*60);
            $strnow = strtotime($waktu);

            $no_telp = $getplt->driver_phone;
            $plat = $getplt->plat_no;
            $driver = $getplt->driver_name;
            $project = $getplt->master_project_name;
            $waiting = $getplt->waiting_time;
            $id_dms = $getplt->id_dms_form;

            if ($strplt == $strnow) {

                $this->testapi($no_telp,$plat,$driver,$project,$id_dms);

            }

            print_r($strplt." ".$strnow."--");
         }*/
    }


    public function testapi($no_telp,$plat,$driver,$project,$id_dms){

        $clientA = new GuzzleHttp\Client();
        $str_phone = substr($no_telp, 1);
        $response = $clientA->request('GET', 'http://www.etracker.cc/bulksms/mesapi.aspx?user=AzhaDHL01&pass=y1,i3qFa&type=0&to=62'.$str_phone.'&from=CMK&text=Kendaraan dengan plat no '.$plat.' dengan nama '.$driver.' 15 Menit lagi truk anda dijadwalkan memasuki Gate.&servid=MES01&title=test sms gateway');  
        $status =  $response->getStatusCode(); 

        $dms_sms = new Sms_log;
        $dms_transaction = Transaction::all()->where('id_dms_form','=',$id_dms)->first();
        if($status == 200)
        {

            $dms_sms->id_dms_form = $id_dms;
            $dms_sms->message = 'berhasil kirim ke noomor '.$no_telp;
            $dms_sms->status = 'success';
            $dms_sms->save();

            $dms_transaction->is_sms = '1';
            $dms_transaction->save();

            $buffer =  $response->getBody()->getContents();     
            return $buffer;
        }else {

            $dms_sms->id_dms_form = $id_dms;
            $dms_sms->message = 'gagal kirim ke nomor '.$no_telp;
            $dms_sms->status = 'failed';
            $dms_sms->save();
            return 'error_api';
        }
    }

     public function sms_gateway($id){
        $id_dms = $id;
        $sms_tampung = Transaction::getTableTransaction()->where('id_dms_form','=',$id_dms)->first();
        $no_telp = $sms_tampung->driver_phone;
        $plat = $sms_tampung->plat_no;
        $driver = $sms_tampung->driver_name;
        $project = $sms_tampung->master_project_name;

            $this->testapi($no_telp,$plat,$driver,$project);
        }
}
