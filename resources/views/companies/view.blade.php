@extends('layout')

@section('content')

<div class="card">
    <div class="card-header">Company Page</div>
    <div class="card-body">
        <div class="card-body">
            <h5 class="card-title">Name: {{ $company->name }}</h5>
            <p class="card-text">Email: {{ $company->email }}</p>

           
            <p class="card-text">Logo:</p>
            @if($company->logo)
                <img src="{{ asset('storage/' . $company->logo) }}" alt="Company Logo" width="150" class="img-thumbnail">
            @else
                <p>No logo available</p>
            @endif

            <p class="card-text">Website: <a href="{{ $company->website }}" target="_blank">{{ $company->website }}</a></p>
        </div>
    </div>
</div>

@endsection
