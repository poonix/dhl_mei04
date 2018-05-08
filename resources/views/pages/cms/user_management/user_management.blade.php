@extends('layouts.cms')
@section('content')
      <div class="">
        <div class="col-sm-12">
          <div class="row ujung">
            <div class="col-sm-12 paddinghead" style="background-color: #eee">
              <h5 style="color: #d71635"><strong>User </strong></h5>
            </div>  
          </div>
          <h3 style="color: #d71635;" class="titledashboard"> USER  DATA</h3>
          <a href="{{url('/cms/user_management/input')}}"><button type="button" style="margin-bottom: 10px;" class="btn btnadd">Add Data</button></a>
        </div>
        <div>
        <table class="table table-striped fontsizetable text-center"  width="100%" cellspacing="0">     
          <thead class="thead paddingtable text-center" >
            <tr>
              <th>No</th>
              <th>ID</th>
              <th>NAME</th>
              <th class="phone">USERNAME</th>
              <th class="phone">PASSWORD</th>
              <th>ID USER GROUP</th>
              <th>ID PROJECT</th>
              <th class="phone">CREATED BY</th>
              <th class="phone">UPDATED BY</th>
              <th class=" actiontable">ACTION</th>
            </tr>
          </thead>

          <tbody class="paddingtable text-center">
            @foreach($dms_user_management as $user)
            <tr>    
              <td class="">{{ $no++ }}</td>
              <td class="">{{$user->id}}</td>
              <td class="">{{$user->name}}</td>
              <td class="phone">{{$user->username}}</td>
              <td class="phone">{{$user->password}}</td>
              <td class="">{{$user->usergroup_name}}</td>
              <td class="">{{$user->master_project_name}}</td>
              <td class="phone">{{$user->created_by}}</td>
              <td class="phone">{{$user->updated_by}}</td>
              <td style="float: left;">
                <a href="{{url('/cms/user_management/'.$user->id.'/edit')}}"><button type="button" class="action btn btn-danger"><img src="{{ asset('image/pencil.png')}}" alt="" style="width: 16px; height: auto; "></button></a>
                <form method="POST" action="{{url('/cms/user_management/'.$user->id.'/delete')}}" class="text-center" style="float: right; margin-left: 2px;">
                  {{ csrf_field() }}
                  <input class="btn btn-danger action" type="submit" name="delete" value="D" onclick="return confirm('Are you sure want to delete name {{$user->name}}?');" style="width: 20px; height: auto;"> 
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
