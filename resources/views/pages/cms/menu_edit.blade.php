@extends('layouts.cms')
@section('content')
    <div class="tab-pane active">
      <div class="col-sm-12">
        <div class="row ujung">
          <div class="col-sm-12 paddinghead" style="background-color: #eee">
            <h5 style="color: #d71635"><strong>REALISASI > EDIT</strong></h5>
          </div>  
        </div>
        <h3 style="color: #d71635;" class="title_cms"> EDIT</h3>
      </div>

      <div class="col-md-6 col-sm-12">
      <!-- <form action="" method=""> -->
        <input type="text" class="form-text" name="driver" placeholder="Driver Name">
        <input type="text" class="form-text" name="phone" placeholder="Phone">
        <input type="text" class="form-text" name="type" placeholder="Type Of Vehicle">
        <input type="text" class="form-text" name="platno" placeholder="Plat No">
        <input type="text" class="form-text" name="trans_company" placeholder="Transportation Company">
        <input type="text" class="form-text" name="shipment" placeholder="Shipment">
        <input type="text" class="form-text" name="" placeholder="Customer / Project Name">
        <div class="row">
          <div class="col-sm-3 text-center">
            <a href="../menu"><input style="width: 100%" type="submit" class="btn btn-success submit" value="SUBMIT"/></a>
          </div>
          <div class="col-sm-3 text-center">
            <a href="../menu"><input style="width: 100%" type="submit" class="btn btn-danger delete" value="CANCEL"/></a>
          </div>
      </div>
      <!-- </form> -->
    </div>
      
  </div>
@endsection

