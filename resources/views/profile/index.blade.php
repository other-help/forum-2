@extends('layouts.front')

@section('category')
    <div class="col-md-3" >
    <div class="dp">
    <img src="https://dummyimage.com/300x200/000/fff" alt="">
    </div>
        <h3>
            {{$user->name}}
        </h3>
        <h4>{{$user->email}}</h4>

    </div>

@endsection

@section('content')
<div> 
    
    <h3>Derniers fils de discussion de {{$user->name}}</h3>

    @forelse($threads as $thread)
        <h5>{{$thread->subject}}</h5>

    @empty
        <h5>Pas encore de fils de discussion</h5>

    @endforelse
    <br>
    <hr>

    <h3>derniers commentaires de {{$user->name}}</h3>

    @forelse($comments as $comment)
        <h5>{{$user->name}} à commenté dans <a href="{{route('thread.show',$comment->commentable->id)}}">{{$comment->commentable->subject}}</a>  {{$comment->created_at->diffForHumans()}}</h5>
    @empty
    <h5>Aucun commantairet</h5>
    @endforelse
</div>

@endsection