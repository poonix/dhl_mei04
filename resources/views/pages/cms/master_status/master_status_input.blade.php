@extends('layouts.cms')
@section('content')
    <div class="tab-pane active">
      <div class="col-sm-12">
        <div class="row ujung">
          <div class="col-sm-12 paddinghead" style="background-color: #eee">
            <h5 style="color: #d71635"><strong>Master Status > Input</strong></h5>
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
        <form method="POST" action="/dhlcms/public/cms/master_status/input">
            {{ csrf_field() }}
            <input type="text" class="form-text" name="status_name" placeholder="Status" value="{{ old('caption') }}">
            <div class="row">
              <div class="col-sm-3 text-center">
                <input style="width: 100%" type="submit" class="btn btn-success submit" value="SUBMIT" name="submit" />
              </div>
              <div class="col-sm-3 text-center">
                <a href="/dhlcms/public/cms/master_status"><input style="width: 100%" type="button" class="btn btn-danger delete" value="CANCEL"/></a>
              </div>
            </div>
        </form>
      <!-- </form> -->
    </div>
      
  </div>
@endsection

