<?php

namespace App\Providers;
use Laravel\Passport\Passport;
use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

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

       Passport::routes();

<<<<<<< HEAD
      // Passport::tokensExpireIn(now()->addDays(7300));
      // Passport::refreshTokensExpireIn(now()->addDays(7300));
=======
      Passport::tokensExpireIn(now()->addYears(18));
      Passport::refreshTokensExpireIn(now()->addYears(18));
>>>>>>> 7e717b36d033bec51a2fa0ab28a6b7d748af7063
    }

  
}
