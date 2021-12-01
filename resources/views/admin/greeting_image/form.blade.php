    @component('admin.component.select', [
        'name' => 'greeting_id',
        'title' => 'select category',
        'lists' => App\Model\GreetingCategory::all()->pluck('name','id'),
        'value'=>null,
        'required'=>true,
        'options'=>[]
    ])@endcomponent
    @component('admin.component.text', [
        'name' => 'title',
        'title' => 'Title',
        'value'=>null,
        'required'=>true,
        'options'=>['placeholder'=>'Enter title']
    ])@endcomponent
    @component('admin.component.text', [
       'name' => 'description',
       'title' => 'Description',
       'value'=>null,
       'required'=>true,
       'options'=>['placeholder'=>'Enter description']
   ])@endcomponent
    @component('admin.component.select', [
       'name' => 'language',
       'title' => 'select Language',
       'lists' => \App\Model\VideoCategory::$languages,
       'value'=>null,
       'required'=>true,
       'options'=>['placeholder'=>'Enter language']
   ])@endcomponent
    @component('admin.component.file', [
        'name' => 'image',
        'title' => 'Upload image',
        'value'=>null,
        'required'=>true,
        'options'=>['placeholder'=>'Choose file']
    ])@endcomponent


    @if(!empty($record['image_url']))
    <img src="{{ $record['image_url'] }}" width="150">
    @endif
