<?php

namespace App\Http\Middleware;

use Closure;

class LoginCheckCms
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(session()->get('session_login_cms') == false || session()->get('session_login_cms') == ''){
            return  redirect('/cms/login');
        }
        return $next($request);
    }
}
