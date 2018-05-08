@extends('layouts.cms')
@section('content')
      <div class="">
        <div class="col-sm-12">
          <div class="row ujung">
            <div class="col-sm-12 paddinghead" style="background-color: #eee">
              <h5 style="color: #d71635"><strong>REALISASI</strong></h5>
            </div>  
          </div>
          <h3 style="color: #d71635;" class="title_cms"> REALISASI DATA</h3>
        </div>
        <div>
        <table class="table table-striped fontsizetable text-center"  width="100%" cellspacing="0">     
          <thead class="thead paddingtable text-center" >
            <tr>
              <th class="">ID</th>
              <th class="">PLAT NO</th>
              <th class="">DRIVER NAME</th>
              <th class="phone ">PHONE</th>
              <th class="cus ">CUSTOMER / PROJECT NAME</th>
              <th class="">PLT</th>
              <th class="">GATE</th>
              <th class="">STATUS</th>
              <th class="log" >LOG</th>
              <th class=" actiontable">ACTION</th>
            </tr>
          </thead>

          <tbody class="paddingtable text-center">
            <tr>    
              <td class="">256SNG</td>
              <td class="">T 2992 BGC</td>
              <td class="">Sandi Rizaldi</td>
              <td class="phone ">08544455454</td>
              <td class="cus ">J&T</td>
              <td class=" ">21:00</td>
              <td class=" ">4</td>
              <td class="">Truck Arrival</td>
              <td class="log "></td>
              <td style="float: left;">
                <a href="menu/edit"><button type="button" class="action btn btn-danger"><img src="{{ asset('image/pencil.png')}}" alt="" style="width: 16px; height: auto;"></button></a>
                <a href="#"><button type="button" class="action btn btn-danger"><img src="{{ asset('image/trash.png')}}" alt="" style="width: 16px; height: auto;"></button></a>
              </td>
            </tr>
            <tr>    
              <td class="">542SPK</td>
              <td class="">T 5646 CCD</td>
              <td class="">Andi Lau</td>
              <td class="phone ">08124545664</td>
              <td class="cus ">TiKi</td>
              <td class="">- - -</td>
              <td class="">- - -</td>
              <td class="">Truck Arrival</td>
              <td class="log "></td>
              <td style="float: left;">
                <a href="menu/edit"><button type="button" class="action btn btn-danger"><img src="{{ asset('image/pencil.png')}}" alt="" style="width: 16px; height: auto;"></button></a>
                <a href="#"><button type="button" class="action btn btn-danger"><img src="{{ asset('image/trash.png')}}" alt="" style="width: 16px; height: auto;"></button></a>
              </td>
            </tr>
            <tr>    
              <td class="">221KPT</td>
              <td class="">T 1234 FCG</td>
              <td class=" ">Udin Sedunia</td>
              <td class="phone ">08135586498</td>
              <td class="cus ">JNE</td>
              <td class="">21:20</td>
              <td class="">9</td>
              <td class="">Truck Arrival</td>
              <td class="log "></td>
              <td style="float: left;">
                 <a href="menu/edit"><button type="button" class="action btn btn-danger"><img src="{{ asset('image/pencil.png')}}" alt="" style="width: 16px; height: auto;"></button></a>
                <a href="#"><button type="button" class="action btn btn-danger"><img src="{{ asset('image/trash.png')}}" alt="" style="width: 16px; height: auto;"></button></a>
              </td>
            </tr>
          </tbody>
        </table>
        </div>
      </div>
@endsection
