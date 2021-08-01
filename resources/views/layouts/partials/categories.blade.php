<div class="col-md-3">
    
    <form method="get" action="/thread/search">
        
        <div class="form-group">
            <input type="text" name="query" class="form-control" placeholder="rechercher">
        </div>

    </form>
    

    <a class="btn btn-success form-control"  href="{{route('thread.create')}}">Crée un sujet</a> <br><br>
    <h4>Tags</h4>
    <ul class="list-group">
        <a href="{{route('thread.index')}}" class="list-group-item">
            <span class="badge"></span>
            Tout
        </a>
        @foreach($tags as $tag)
        <a href="{{route('thread.index',['tags'=>$tag->id])}}" class="list-group-item">
            <span class="badge"></span>
            {{$tag->name}}
    </a>
        @endforeach
        {{--<a href="#" class="list-group-item">--}}
            {{--<span class="badge">2</span>--}}
            {{--PHP--}}
        {{--</a>--}}
        {{--<a href="#" class="list-group-item">--}}
            {{--<span class="badge">1</span>--}}
            {{--Python--}}
        {{--</a>--}}
    </ul>
</div>