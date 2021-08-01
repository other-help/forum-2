<a href="{{route('thread.show',$notification->data['thread']['id'])}}">

    {{$notification->data['user']['name']}} à commenter dans <strong> {{$notification->data['thread']['subject']}}</strong>
</a>
