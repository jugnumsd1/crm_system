@extends('layout')

@section('content')

<div class="card">
    <div class="card-header">Company Page</div>
    <div class="card-body">
        <div class="card-body">
            <h5 class="card-title">First Name: {{ $employees->first_name }}</h5>
            <h5 class="card-title">Last Name: {{ $employees->last_name }}</h5>
            <p class="card-text">Email: {{ $employees->email }}</p>
            <h5 class="card-title">Last Name: {{ $employees->company_id }}</h5>
        

            <p class="card-text">Phone: <a href="{{ $employees->phone }}" target="_blank">{{ $employees->phone }}</a></p>
        </div>
    </div>
</div>

@endsection
