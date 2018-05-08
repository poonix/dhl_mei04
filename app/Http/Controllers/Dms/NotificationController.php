<?php

namespace App\Http\Controllers\Dms;
 //require __DIR__'/vendor/autoload.php';
// use Mike42\Escpos\PrintConnectors\FilePrintConnector;
// use Mike42\Escpos\PrintConnectors\WindowsPrintConnector;
// use Mike42\Escpos\Printer;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Model\Form;
use App\Http\Controllers\Model\Transaction;
use App\Http\Controllers\Model\Transaction_history;
use App\Http\Controllers\Model\Master_vehicle;
use App\Http\Controllers\Model\Master_plat;
use App\Http\Controllers\Model\Master_phone;
use App\Http\Controllers\Model\Master_name;
use App\Http\Controllers\Model\Master_asal;
use App\Http\Controllers\Model\Master_tujuan;
use App\Http\Controllers\Model\Master_project;
use App\Http\Controllers\Model\Master_tc;
use App\Http\Controllers\Model\Purpose;
use App\Http\Controllers\Model\Sms_log;
use App\Http\Controllers\Dms\TestController;
use Illuminate\Routing\Middleware\LoginCheck;
use Illuminate\Support\Facades\Redirect;
use DateTime;
use Response;
use Date;
use Auth;
use Session;
use Carbon;
use GuzzleHttp;
use Excel;
use App\Http\Controllers\Model\User_management;
use App\Http\Controllers\Model\User_cms;
 /* Call this file 'hello-world.php' */
use vendor\autoload;

use Mike42\Escpos\EscposImage;
use Mike42\Escpos\PrintConnectors\WindowsPrintConnector;
use Mike42\Escpos\PrintConnectors\FilePrintConnector;
use Mike42\Escpos\Printer;
use Maatwebsite\Excel\Concerns\FromCollection;

class NotificationController extends Controller

{
    public function fcm_notif($id_user, $id_fcm){
    	$dms_user_management = User_management::find($id_user);

            $dms_user_management->fcm = $id_fcm; 

    	$dms_user_management->save();
    }
}