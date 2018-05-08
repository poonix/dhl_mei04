@extends('layouts.cms')
@section('content')
    <div class="tab-pane active">
      <div class="col-sm-12">
        <div class="row ujung">
          <div class="col-sm-12 paddinghead" style="background-color: #eee">
            <h5 style="color: #d71635"><strong>User > Edit</strong></h5>
          </div>  
        </div>
        <h3 style="color: #d71635;" class="titledashboard"> EDIT</h3>
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
        <form method="POST" action="{{url('/cms/user_management/'.$dms_user_management->id.'/edit')}}">
            {{ csrf_field() }}
            <input type="text" class="form-text" name="name" placeholder="Name" value="{{ $dms_user_management->name }}">
            <input type="text" class="form-text" name="username" placeholder="Username" value="{{ $dms_user_management->username }}" readonly="">
            <input type="password" class="form-text" name="password" placeholder="Password" value="" autocomplete="off">
            <input type="password" class="form-text" name="password_confirmation" placeholder="Confirm Password" value="" autocomplete="off">
            <table width="100%">
            <tr class="form-text">
              <td>User Group</td>
              <td class="col-md-6"><select name="id_usergroup" style="width: 100%">
                  <option value="">-- Select Category --</option>
                  @foreach ($dms_user_group as $group)
                  <option value="{{ $group->id }}"
                    <?php if ($dms_user_management->id_usergroup == $group->id): ?>
                    <?php echo "selected" ?>
                    <?php endif ?>>{{ $group->usergroup_name }}</option>
                  @endforeach
              </select></td>
            </tr>
            <tr class="form-text">
              <td>Project Name</td>
              <td class="col-md-6"><select name="id_project" style="width: 100%">
                  <option value="">-- Select Category --</option>
                  @foreach ($dms_master_project as $project)
                  <option value="{{ $project->id }}"
                    <?php if ($dms_user_management->id_project == $project->id): ?>
                    <?php echo "selected" ?>
                    <?php endif ?>>{{ $project->master_project_name }}</option>
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
            <input type="hidden" name="_method" value="PUT">
        </form>
    </div>
      
  </div>
@endsection

