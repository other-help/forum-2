<div class="comment-form">

    <form action="{{route('threadcomment.store',$thread->id)}}" method="post" role="form">
        {{csrf_field()}}
        <legend>ajouter une reponse</legend>

        <div class="form-group">
            <input type="text" class="form-control" name="body" id="" placeholder="Input...">
        </div>


        <button type="submit" class="btn btn-primary">commenter</button>
    </form>

</div>