@extends('layout')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-9">
            <div class="card">
                <div class="card-header">
                    <h2>Employee Record</h2>
                </div>
                <div class="card-body">
                    <a href="{{ route('employees.create') }}" class="btn btn-success btn-sm" title="Add New Employees">
                        <i class="fa fa-plus" aria-hidden="true"></i> Add New Employee
                    </a>
                    <br />
                    <br />
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>F_Name</th>
                                    <th>l_Name</th>
                                    <th>Company_ID</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($employees as $employees)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $employees->first_name }}</td>
                                    <td>{{ $employees->last_name }}</td>
                                    <td>{{ $employees->company->id }}</td>
                                    <td>{{ $employees->email }}</td>
                                    <td>{{ $employees->phone }}</td>
                                    <td>
                                        <a href="{{ route('employees.show', $employees->id) }}" title="View Employee">
                                            <button class="btn btn-info btn-sm">
                                                <i class="fa fa-eye" aria-hidden="true"></i> View
                                            </button>
                                        </a>
                                        <a href="{{ route('employees.edit', $employees->id) }}" title="Edit Employee">
                                            <button class="btn btn-primary btn-sm">
                                                <i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit
                                            </button>
                                        </a>
                                        <form method="POST" action="{{ route('employees.destroy', $employees->id) }}" accept-charset="UTF-8" style="display:inline" onsubmit="return confirm('Confirm delete?')">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-danger btn-sm" title="Delete Employee">
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
