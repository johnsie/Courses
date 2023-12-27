<h1> The lis of tasks</h1>

<div>

@isset($name)
{{ $name }}
@endisset
</div>


<div>
{{-- @if (count($tasks)) --}}
<div>There are tasks</div>
    @forelse($tasks as $task)
       <div><a href="{{ route('tasks.show', ['id'=> $task->id ]) }}"> {{ $task->title }}</a> </div>
    @empty
    <div>There are no tasks</div>
    @endforelse
{{-- @endif --}}
</div>