@extends('layout') 

@section('content')

<div class="card">
    <div class="card-header">Create New Employee</div>
    <div class="card-body">
        <form action="{{ route('employees.store') }}" method="post" enctype="multipart/form-data">
            {!! csrf_field() !!}

   
            <label for="first_name">First Name</label><br>
            <input type="text" name="first_name" id="first_name" class="form-control" required><br>

            <label for="last_name">Last Name</label><br>
            <input type="text" name="last_name" id="last_name" class="form-control" required><br>
  
            <label for="email">Email</label><br>
            <input type="email" name="email" id="email" class="form-control"><br>

         
            <label for="company_id">Company</label><br>
            <input type="text" name="company_id" id="company_id" required><br>

          
            <label for="phone">Phone</label><br>
            <input type="number" name="phone" id="phone" class="form-control"><br>

            <input type="submit" value="Save" class="btn btn-success"><br>
        </form>
    </div>
</div>

@stop
