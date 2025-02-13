@extends('layout') 

@section('content')

<div class="card">
    <div class="card-header">Create New Company</div>
    <div class="card-body">
        <form action="{{ route('companies.store') }}" method="post" enctype="multipart/form-data">
            {!! csrf_field() !!}

           
            <label for="name">Name</label><br>
            <input type="text" name="name" id="name" class="form-control" required><br>

            <label for="email">Email</label><br>
            <input type="email" name="email" id="email" class="form-control"><br>

           
            <label for="logo">Logo</label><br>
            <input type="file" name="logo" id="logo" class="form-control" accept="image/*"><br>

            <label for="website">Website</label><br>
            <input type="url" name="website" id="website" class="form-control"><br>

            <input type="submit" value="Save" class="btn btn-success"><br>
        </form>
    </div>
</div>

@stop 