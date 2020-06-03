<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Helpers\JwtAuth;



class BrowserCacheController extends Controller
{



    // Clear application cache:
    public function clearcache(){
        $exitCode = Artisan::call('cache:clear');
      //  return 'Application cache has been cleared';
    }

    //Clear route cache:
    public function routecache(){
        $exitCode = Artisan::call('route:cache');
       // return 'Routes cache has been cleared';
    }

    //Clear config cache:
    public function configcache(){
        $exitCode = Artisan::call('config:cache');
        //return 'Config cache has been cleared';
    }

    // Clear view cache:
    public function viewclear(){
        $exitCode = Artisan::call('view:clear');
        //return 'View cache has been cleared';
    }



}
