<?php

namespace App\Http\Controllers\Dms;

use Maatwebsite\Excel\Concerns\FromView;
use App\Http\Controllers\Model\Transaction;
use Illuminate\Contracts\View\View;
use Excel;
use Exportable;

class TestController implements FromView
{	
	public function __construct(string $tgl1,$tgl2,$purpose)
    {
        $this->date1 = $tgl1;
        $this->date2 = $tgl2;
        $this->purpose = $purpose;
    }
// ->where('created_at','>=',$this->date1.' 00:00:00')->where('created_at','<=',$this->date2.' 23:59:59')
// ->where('id_location','=',session()->get('session_id_loc'))
// ->where('cust_proj_name','=',session()->get('session_project')),

     public function view(): View
    {
        if (session()->get('session_id_group') == 1){
            if ($this->purpose == 1) {
                return view('pages/dms/export_excel_all', [
                'dms_all' => Transaction::getTableTransaction()
                                ->where('created_at','>=',$this->date1.' 00:00:00')->where('created_at','<=',$this->date2.' 23:59:59'),
                'purpose' => $this->purpose,
                'no_all' => 1
                ]);
            }

            elseif ($this->purpose == 2) {
                return view('pages/dms/export_excel_all', [
                'dms_all' => Transaction::getTableTransaction()
                                ->where('created_at','>=',$this->date1.' 00:00:00')->where('created_at','<=',$this->date2.' 23:59:59')
                                ->where('id_purpose','=',1),
                'purpose' => $this->purpose,
                'no_all' => 1
                ]);
            }

            elseif ($this->purpose == 3) {
                return view('pages/dms/export_excel_all', [
                'dms_all' => Transaction::getTableTransaction()
                                ->where('created_at','>=',$this->date1.' 00:00:00')->where('created_at','<=',$this->date2.' 23:59:59')
                                ->where('id_purpose','=',2),
                'purpose' => $this->purpose,
                'no_all' => 1
                ]);
            }

            else{
                return view('pages/dms/export_excel_all', [
                'dms_all' => Transaction::getTableTransaction()
                                ->where('created_at','>=',$this->date1.' 00:00:00')->where('created_at','<=',$this->date2.' 23:59:59'),
                'purpose' => $this->purpose,
                'no_all' => 1
                ]);
            }
        }
        
        elseif (session()->get('session_id_group') == 3) {
            if ($this->purpose == 1) {
                return view('pages/dms/export_excel_all', [
                'dms_all' => Transaction::getTableTransaction()
                                ->where('created_at','>=',$this->date1.' 00:00:00')->where('created_at','<=',$this->date2.' 23:59:59')
                                ->where('id_location','=',session()->get('session_id_loc')),
                'purpose' => $this->purpose,
                'no_all' => 1
                ]);
            }

            elseif ($this->purpose == 2) {
                return view('pages/dms/export_excel_all', [
                'dms_all' => Transaction::getTableTransaction()
                                ->where('created_at','>=',$this->date1.' 00:00:00')->where('created_at','<=',$this->date2.' 23:59:59')
                                ->where('id_purpose','=',1)
                                ->where('id_location','=',session()->get('session_id_loc')),
                'purpose' => $this->purpose,
                'no_all' => 1
                ]);
            }

            elseif ($this->purpose == 3) {
                return view('pages/dms/export_excel_all', [
                'dms_all' => Transaction::getTableTransaction()
                                ->where('created_at','>=',$this->date1.' 00:00:00')->where('created_at','<=',$this->date2.' 23:59:59')
                                ->where('id_purpose','=',2)
                                ->where('id_location','=',session()->get('session_id_loc')),
                'purpose' => $this->purpose,
                'no_all' => 1
                ]);
            }

            else{
                return view('pages/dms/export_excel_all', [
                'dms_all' => Transaction::getTableTransaction()
                                ->where('created_at','>=',$this->date1.' 00:00:00')->where('created_at','<=',$this->date2.' 23:59:59')
                                ->where('id_location','=',session()->get('session_id_loc')),
                'purpose' => $this->purpose,
                'no_all' => 1
                ]);
            }
        }
        else{
            if ($this->purpose == 1) {
                return view('pages/dms/export_excel_all', [
                'dms_all' => Transaction::getTableTransaction()
                                ->where('created_at','>=',$this->date1.' 00:00:00')->where('created_at','<=',$this->date2.' 23:59:59')
                                ->where('id_location','=',session()->get('session_id_loc'))
                                ->where('cust_proj_name','=',session()->get('session_project')),
                'purpose' => $this->purpose,
                'no_all' => 1
                ]);
            }

            elseif ($this->purpose == 2) {
                return view('pages/dms/export_excel_all', [
                'dms_all' => Transaction::getTableTransaction()
                                ->where('created_at','>=',$this->date1.' 00:00:00')->where('created_at','<=',$this->date2.' 23:59:59')
                                ->where('id_purpose','=',1)
                                ->where('id_location','=',session()->get('session_id_loc'))
                                ->where('cust_proj_name','=',session()->get('session_project')),
                'purpose' => $this->purpose,
                'no_all' => 1
                ]);
            }

            elseif ($this->purpose == 3) {
                return view('pages/dms/export_excel_all', [
                'dms_all' => Transaction::getTableTransaction()
                                ->where('created_at','>=',$this->date1.' 00:00:00')->where('created_at','<=',$this->date2.' 23:59:59')
                                ->where('id_purpose','=',2)
                                ->where('id_location','=',session()->get('session_id_loc'))
                                ->where('cust_proj_name','=',session()->get('session_project')),
                'purpose' => $this->purpose,
                'no_all' => 1
                ]);
            }

            else{
                return view('pages/dms/export_excel_all', [
                'dms_all' => Transaction::getTableTransaction()
                                ->where('created_at','>=',$this->date1.' 00:00:00')->where('created_at','<=',$this->date2.' 23:59:59')
                                ->where('id_location','=',session()->get('session_id_loc'))
                                ->where('cust_proj_name','=',session()->get('session_project')),
                'purpose' => $this->purpose,
                'no_all' => 1
                ]);
            }
        }
    }
}