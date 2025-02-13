@extends('layout')

@section('content')
<div class="container mt-4">
    <div class="card">
        <div class="card-header">
            <h2>Edit Employee</h2>
        </div>
        <div class="card-body">
            <form action="{{ route('employees.update', $employees->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method("PUT")  

                <input type="hidden" name="id" value="{{ $employees->id }}" />

                <div class="mb-3">
                    <label for="first_name" class="form-label">First Name</label>
                    <input type="text" name="first_name" id="first_name" value="{{ $employees->first_name }}" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="last_name" class="form-label">Last Name</label>
                    <input type="text" name="last_name" id="last_name" value="{{ $employees->last_name }}" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" name="email" id="email" value="{{ $employees->email }}" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="company_id" class="form-label">Company_ID</label>
                    <input type="number" name="company_id" id="company_id" value="{{ $employees->company_id }}" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="phone" class="form-label">Phone</label>
                    <input type="phone" name="phone" id="phoe" value="{{ $employees->phone }}" class="form-control" required>
                </div>    

                <button type="submit" class="btn btn-success">Update Employee</button>
                <a href="{{ route('employees.index') }}" class="btn btn-secondary">Cancel</a>
            </form>
        </div>
    </div>
</div>
@endsection  
