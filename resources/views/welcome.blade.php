@extends('layouts.front')

@section('banner')
    <div class="jumbotron">
        <div class="container">
            <h1>Bienvenue sur Forum MI (Miage)</h1>
            @if (auth()->user())
                Connecter en tant que {{auth()->user()->name}}
            @else
            <p>N'oubliez pas de vous inscrire</p>
            <p>
                <a class="btn btn-primary btn-lg" href="{{ route('register') }}">s'inscrire</a>
            </p>
            @endif
            
        </div>
    </div>
@endsection
@section('heading',"Threads")
@section('content')
    @include('thread.partials.thread-list')
@endsection