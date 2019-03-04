<?php

namespace App\Providers;
use Laravel\Passport\Passport;
use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

use App\Role;
use App\User;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        'App\Model' => 'App\Policies\ModelPolicy',
    ];
      /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        $user=\Auth::user();
              $roles=Role::with('permission')->get();
              foreach($roles as $role){
                    foreach($role->permission as $permission){
                        $permissionArray[$permission->key][]=$role->id;
                    }
              }


              foreach($permissionArray as $key=>$roles){
                    Gate::define($key, function(User $user) use ($roles){
                        return count(array_intersect($user->role()->pluck('id')->toArray(),$roles));
                    });
              }




      Passport::routes();

      Passport::tokensExpireIn(now()->addYears(18));
      Passport::refreshTokensExpireIn(now()->addYears(18));

    }

  
}
