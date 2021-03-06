@extends('layouts.cms')
@section('content')
    <div class="tab-pane active">
      <div class="col-sm-12">
        <div class="row ujung">
          <div class="col-sm-12 paddinghead" style="background-color: #eee">
            <h5 style="color: #d71635"><strong>Master Location > Edit</strong></h5>
          </div>  
        </div>
        <h2 style="color: #d71635;" class="titledashboard"> EDIT</h3>
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
        <form method="POST" action="{{url('/cms/master_location/'.$dms_master_location->id.'/edit')}}">
            {{ csrf_field() }}
            <input type="text" class="form-text" name="location" placeholder="Location" value="{{ $dms_master_location->location }}">
            <select class="form-text form-control" name="id_project" style="width: 100%">
                  <option value="">-- Select Project --</option>
                  @foreach ($dms_master_project as $project)
                  <option value="{{ $project->id }}"
                    <?php if ($project->id == $dms_master_location->id_project): ?>
                        <?php echo "selected" ?>
                        <?php endif ?>>{{ $project->master_project_name }}</option>
                  @endforeach
            </select>
            <div class="row">
              <div class="col-sm-3 text-center">
                <input style="width: 100%" type="submit" class="btn btn-success submit" value="SUBMIT" name="submit" />
                
              </div>
              <div class="col-sm-3 text-center">
                <a href="{{url('/cms/master_location')}}"><input style="width: 100%" type="button" class="btn btn-danger delete" value="CANCEL"/></a>
              </div>
            </div>
            <input type="hidden" name="_method" value="PUT">
        </form>
    </div>
  </div>
@endsection

