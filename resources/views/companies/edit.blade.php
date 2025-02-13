@extends('layout')

@section('content')
<div class="card">
    <div class="card-header">Edit Company</div>
    <div class="card-body">
        
      
        <form action="{{ route('companies.update', $company->id) }}" method="POST" enctype="multipart/form-data">
            {!! csrf_field() !!}
            @method("PUT")  

            <input type="hidden" name="id" id="id" value="{{ $company->id }}" />

       
            <label>Name</label></br>
            <input type="text" name="name" id="name" value="{{ $company->name }}" class="form-control" required></br>

           
            <label>Email</label></br>
            <input type="email" name="email" id="email" value="{{ $company->email }}" class="form-control"></br>

      
            <label>Logo</label></br>
            @if($company->logo)
                <img src="{{ asset('storage/' . $company->logo) }}" alt="{{ $company->name }}" width="100"><br><br>
            @endif
            <input type="file" name="logo" id="logo" class="form-control"></br>

            <label>Website</label></br>
            <input type="text" name="website" id="website" value="{{ $company->website }}" class="form-control"></br>

      
            <input type="submit" value="Update" class="btn btn-success"></br>
        </form>

    </div>
</div>

@stop
