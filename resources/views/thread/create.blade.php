@extends('layouts.front')

@section('heading',"Create Thread")

@section('content')


    <div class="row">
        <div class=" well">
            <form class="form-vertical" action="{{route('thread.store')}}" method="post" role="form"
                  id="create-thread-form">
                {{csrf_field()}}
                <div class="form-group">
                    <label for="subject">Sujet</label>
                    <input type="text" class="form-control" name="subject" id="" placeholder="entrez le sujet..."
                           value="{{old('subject')}}">
                </div>

                <div class="form-group">
                    <label for="tag">Tags</label>
                    <select name="tags[]" multiple id="tag">
                        {{-- todo add from db--}}
                        @foreach($tags as $tag)
                            <option value="{{$tag->id}}">{{$tag->name}}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group">
                    <label for="thread">Detail</label>
                    <textarea class="form-control" name="thread" id="" placeholder="Entrez les detailsdu sujet..."
                    > {{old('thread')}}</textarea>
                </div>

                {{--  <div class="form-group">
                   {!! app('captcha')->display() !!}
                </div>  --}}

                <button type="submit" class="btn btn-primary">Valider</button>
            </form>
        </div>
    </div>

@endsection

@section('js')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.12.4/js/standalone/selectize.min.js"></script>

    <script>

        $(function () {
            $('#tag').selectize();
        })
    </script>
@endsection