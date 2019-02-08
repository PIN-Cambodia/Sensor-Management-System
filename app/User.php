<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Laravel\Passport\HasApiTokens;
<<<<<<< HEAD
=======




//use Illuminate\Database\Eloquent\SoftDeletes;



>>>>>>> 7e717b36d033bec51a2fa0ab28a6b7d748af7063
class User extends \TCG\Voyager\Models\User
{
    use Notifiable, HasApiTokens;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password','api_token'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
<<<<<<< HEAD
    // override on compearing to password in table users without encryp

    /**
    *
    * @param string $username
    * @return null|App\User
    */
    

    public function findForPassport($username)
    {

    return $this->where('email', $username)->first();;
=======





    /* check in vendor/laravel/src/Bidge/UserRepository */

    /**
     *
     * @param  string  $username
     * @return null|App\User
     */
  

    public function findForPassport($username)
    {
      
       return $this->where('email', $username)->first();;
>>>>>>> 7e717b36d033bec51a2fa0ab28a6b7d748af7063
    }

    public function validateForPassportPasswordGrant($password)
    {
<<<<<<< HEAD
    return $this->where('password', $password)->first();
    }
=======
        return $this->where('password', $password)->first();
    }

   

>>>>>>> 7e717b36d033bec51a2fa0ab28a6b7d748af7063
}

