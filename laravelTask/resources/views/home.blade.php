@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Business Table') }}
                    <a href="{{ route('business') }}" class="btn btn-success" style="float: right">Add Besiness</a>
                </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <table class="table table-hover">
                        <thead>
                          <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Phone</th>
                            <th scope="col">Address</th>
                            <th scope="col">Website</th>
                          </tr>
                        </thead>
                        <tbody>
                            @foreach ($besiness as $besinesses )
                            <tr>
                                <th scope="row">{{ $besinesses->id }}</th>
                                <td>{{ $besinesses->name }}</td>
                                <td>{{ $besinesses->email }}</td>
                                <td>{{ $besinesses->phone }}</td>
                                <td>{{ $besinesses->address }}</td>
                                <td>{{ $besinesses->website }}</td>
                              </tr>
                            @endforeach


                        </tbody>
                      </table>
                </div>
                {{ $besiness->links() }}
            </div>
        </div>
    </div>
</div>
@endsection
