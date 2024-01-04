<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Response;
use Illuminate\Http\Request;
use App\Models\Task;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/




Route::get('tasks/', function ()  {
  return view('index',[
  'tasks' => \App\Models\Task::latest()->get()
  ]);
 //  return "Shamone!";
})->name('tasks.index');



//See laravel documentation for db query builder
//You can also use php artisan tink to run these queries

Route::get('completed-tasks/', function ()  {
    return view('index',[
    'tasks' => \App\Models\Task::latest()->where('completed',true)->get()
    ]);
   //  return "Shamone!";
  })->name('tasks.index');
  
  
  Route::view('/tasks/create', 'create');

  Route::post('/tasks', function (Request $request) {
        //dd($request->all());
        
        //Get the validated data from the form
        $data = $request->validate([
        'title'=> 'required|max:255',
        'description' => 'required',
         'long_description'=> 'required'
        ]);

$task = new Task;
$task->title = $data['title'];
$task->description = $data['description'];
$task->long_description= $data['long_description'];

$task->save();

return redirect('')->route('tasks.show',['id' => $task->id]);
  })->name('tasks.store');



Route::get('/',function(){
 
    return redirect()->route('tasks.index');

});


Route::get('tasks/{id}', function($id) 
{
  //\App\Models\Task::find($id);


return view('show',['task' =>  \App\Models\Task::findOrFail($id)]);
}
)->name('tasks.show');


Route::fallback(function () {
    return 'Still got somewhere!';
});


/* Route::get('/xxx', function () {
    return 'Hello';
})->name('hello');

Route::get('/hallo', function () {
    return redirect()->route('hello');
});

Route::get('/greet/{name}', function ($name) {
    return 'Hello ' . $name . '!';
});

Route::fallback(function () {
    return 'Still got somewhere!';
});
 */

//GET
//POST
//PUT
//DELETE

