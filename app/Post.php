<?php

namespace App;
use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
     use Translatable;
    protected $translatable = ['title', 'body'];

// Loads specific locales translations
$posts = Post::withTranslations(['en', 'kh'])->get();
}
