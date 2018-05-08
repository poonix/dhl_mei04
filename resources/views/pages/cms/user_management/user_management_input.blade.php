@extends('layouts.cms')
@section('content')
    <div class="tab-pane active">
      <div class="col-sm-12">
        <div class="row ujung">
          <div class="col-sm-12 paddinghead" style="background-color: #eee">
            <h5 style="color: #d71635"><strong>User > Input</strong></h5>
          </div>  
        </div>
        <h3 style="color: #d71635;" class="titledashboard"> INPUT</h3>
      </div>

      <div class="col-md-6 col-sm-12">
        @if ($errors->any())
          <div class="alert alert-danger">
            <ul>
            @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
            @endforeach
            </ul>
          </div>
        @endif
        <form method="POST" action="{{url('/cms/user_management/input')}}">
            {{ csrf_field() }}
            
            <input type="text" class="form-text" name="name" placeholder="Name" value="{{ old('name') }}">
            <input type="text" class="form-text" name="username" placeholder="Username" value="{{ old('username') }}">
            <input type="password" class="form-text" name="password" placeholder="Password" value="{{ old('password') }}" autocomplete="off">
            <input type="password" class="form-text" name="password_confirmation" placeholder="Confirm Password" value="{{ old('password_confirmation') }}" autocomplete="off">
            <table width="100%">
            <tr class="form-text">
              <td>User Group</td>
              <td class="col-md-6"><select name="id_usergroup" style="width: 100%">
                  <option value="">-- Select Category --</option>
                  @foreach ($dms_user_group as $group)
                  <option value="{{ $group->id }}">{{ $group->usergroup_name }}</option>
                  @endforeach
              </select></td>
            </tr>
            <tr class="form-text">
              <td>Project Name</td>
              <td class="col-md-6"><select name="id_project" style="width: 100%">
                  <option value="">-- Select Category --</option>
                  @foreach ($dms_master_project as $project)
                  <option value="{{ $project->id }}">{{ $project->master_project_name }}</option>
                  @endforeach
              </select></td>
            </tr>
            </table>
            <div class="row">
              <div class="col-sm-3 text-center">
                <input style="width: 100%" type="submit" class="btn btn-success submit" value="SUBMIT" name="submit" />
              </div>
              <div class="col-sm-3 text-center">
                <a href="{{url('/cms/user_management')}}"><input style="width: 100%" type="button" class="btn btn-danger delete" value="CANCEL"/></a>
              </div>
            </div>
        </form>
      <!-- </form> -->
    </div>
      
  </div>
@endsection

