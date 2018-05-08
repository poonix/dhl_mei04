@extends('layouts.cms')
@section('content')
      <div class="">
        <div class="col-sm-12">
          <div class="row ujung">
            <div class="col-sm-12 paddinghead" style="background-color: #eee">
              <h5 style="color: #d71635"><strong>Master Phone</strong></h5>
            </div>  
          </div>
          <h3 style="color: #d71635;" class="titledashboard"> Master Phone Data</h3>
          <a href="{{url('/cms/master_phone/input')}}"><button type="button" style="margin-bottom: 10px;" class="btn btnadd" >Add Data</button></a>
        </div>
        <div>
        <table class="table table-striped fontsizetable text-center"  width="100%" cellspacing="0">     
          <thead class="thead paddingtable text-center" >
            <tr>
              <th>No</th>
              <th>ID</th>
              <th>DRIVER PHONE</th>
              <th>CREATED BY</th>
              <th>UPDATED BY</th>
              <th class="phone">CREATED AT</th>
              <th class="phone">UPDATED AT</th>
              <th class=" actiontable">ACTION</th>
            </tr>
          </thead>

          <tbody class="paddingtable text-center">
            @foreach($dms_master_phone as $phone)
            <tr>    
              <td class="">{{ $no++ }}</td>
              <td class="">{{$phone->id}}</td>
              <td class="">{{$phone->driver_phone}}</td>
              <td class="">{{$phone->created_by}}</td>
              <td class="">{{$phone->updated_by}}</td>
              <td class="phone">{{$phone->created_at}}</td>
              <td class="phone">{{$phone->updated_at}}</td>
              <td style="float: left;">
                <a href="{{url('/cms/master_phone/'.$phone->id.'/edit')}}"><button type="button" class="action btn btn-danger"><img src="{{ asset('image/pencil.png')}}" alt="" style="width: 16px; height: auto; "></button></a>
                <form method="POST" action="{{url('/cms/master_phone/'.$phone->id.'/delete')}}" class="text-center" style="float: right; margin-left: 2px;">
                  {{ csrf_field() }}
                  <input class="btn btn-danger action" type="submit" name="delete" value="D" onclick="return confirm('Are you sure want to delete name {{$phone->driver_phone}}?');" style="width: 20px; height: auto;"> 
                  <input type="hidden" name="_method" value="DELETE">
                </form>
              </td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
    </div>
@endsection
