@extends('layout')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h2 class="font-weight-bold">Companies Record</h2>
                </div>
                <div class="card-body">
                    <a href="{{ route('companies.create') }}" class="btn btn-success btn-sm mb-3" title="Add New Company">
                        <i class="fa fa-plus" aria-hidden="true"></i> Add New Company
                    </a>
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover text-center" style="width: 100%; font-size: 16px;">
                            <thead class="thead-dark">
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Logo</th>
                                    <th>Website</th>
                                    <th style="width: 200px;">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($companies as $company)
                                <tr>
                                    <td class="align-middle">{{ $loop->iteration }}</td>
                                    <td class="align-middle">{{ $company->name }}</td>
                                    <td class="align-middle">{{ $company->email }}</td>
                                    <td class="align-middle">
                                        @if($company->logo)
                                        <img src="{{ asset('storage/' . $company->logo) }}" alt="{{ $company->name }}" width="70" height="70">
                                        @else
                                        No Logo
                                        @endif
                                    </td>
                                    <td class="align-middle">{{ $company->website }}</td>
                                    <td style="white-space: nowrap; width: 200px;">
                                        <a href="{{ route('companies.show', $company->id) }}" title="View Company" class="btn btn-info btn-sm">
                                            <i class="fa fa-eye" aria-hidden="true"></i> View
                                        </a>
                                        <a href="{{ route('companies.edit', $company->id) }}" title="Edit Company" class="btn btn-primary btn-sm">
                                            <i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit
                                        </a>
                                        <form method="POST" action="{{ route('companies.destroy', $company->id) }}" accept-charset="UTF-8" style="display:inline-block" onsubmit="return confirm('Confirm delete?')">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-danger btn-sm" title="Delete Company">
                                                <i class="fa fa-trash-o" aria-hidden="true"></i> Delete
                                            </button>
                                        </form>
                                    </td>
                                    
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
