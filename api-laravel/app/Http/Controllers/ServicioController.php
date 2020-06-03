<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Helpers\JwtAuth;
use App\Model\Servicio;

class ServicioController extends Controller
{
    //
    public function index(){
    	$servicios = Servicio::all();
    	return response()->json(array(
    			'servicios' => $servicios,
    			'status' => 'success'
    		), 200);
    }

    public function show($id){
        $servicio = Servicio::find($id);
        
        if(is_object($servicio)){
            $servicio = Servicio::find($id);
            return response()->json(array('servicio' => $servicio, 'status' => 'success'),200);
        }else{
            return response()->json(array('message' => 'El servicio no existe', 'status' => 'error'),200);
        }
    	
    }



    public function store(Request $request){
		$hash = $request->header('Authorization', null);

    	$jwtAuth = new JwtAuth();
    	$checkToken = $jwtAuth->checkToken($hash);

    	if($checkToken){
			// Recoger datos por POST
			$json = $request->input('json', null);
			$params = json_decode($json);	
			$params_array = json_decode($json, true);

			// Conseguir el usuario identificado
    		$user = $jwtAuth->checkToken($hash, true);

 //falta validar ingreso con rol administrador id persona

    		// Validación
	    	$validate = \Validator::make($params_array, [
	    		'title' => 'required|min:5',
	    		'description' => 'required',
	    		'price' => 'required',
	    		'status' => 'required'
	    	]);

	    	if($validate->fails()){
	    		return response()->json($validate->errors(), 400);
	    	}

    		// Guardar el coche
    		$servicio = new Servicio();
            $servicio->id_padre = $user->sub;
            $servicio->idpersona = $user->sub;
    		$servicio->nombre = $params->nombre;
    		$servicio->description = $params->description;
    		$servicio->active = $params->active;
            $servicio->opciones = $params->opciones;
            $servicio->credito = $params->credito;
    		$servicio->image = $params->image;
    		$servicio->save();
    		
    		$data = array(
    			'servicio' => $servicio,
    			'status' => 'success',
    			'code' => 200,
    		);

    	}else{
    		// Devolver error
    		$data = array(
    			'message' => 'Login incorrecto',
    			'status' => 'error',
    			'code' => 300,
    		);
    	}

    	return response()->json($data, 200);
    }


    public function update($id, Request $request){
    	$hash = $request->header('Authorization', null);

    	$jwtAuth = new JwtAuth();
    	$checkToken = $jwtAuth->checkToken($hash);

    	if($checkToken){
    		// Recoger parametros POST
    		$json = $request->input('json', null);
    		$params = json_decode($json);
    		$params_array = json_decode($json, true);

    		// Validar datos
	    	$validate = \Validator::make($params_array, [
	    		'nombre' => 'required|min:5',
	    		'description' => 'required',
	    		'active' => 'required',
                'opciones' => 'required',
                'credito' => 'credito'
	    	]);
 //falta validar ingreso con rol administrador id persona


	    	if($validate->fails()){
	    		return response()->json($validate->errors(), 400);
	    	}

    		// Actualizar el registro
            unset($params_array['id']);
            unset($params_array['id_padre']);
            unset($params_array['idpersona']);
            unset($params_array['nombre']);
            unset($params_array['description']);
            unset($params_array['active']);
            unset($params_array['opciones']);
            unset($params_array['created_at']);
            unset($params_array['credito']);

    		$servicio = Servicio::where('id', $id)->update($params_array);

    		$data = array(
    			'servicio' => $params,
    			'status' => 'success',
    			'code' => 200
    		);

		}else{
    		// Devolver error
    		$data = array(
    			'message' => 'Login incorrecto',
    			'status' => 'error',
    			'code' => 300,
    		);
    	}

    	return response()->json($data, 200);
    }

    public function destroy($id, Request $request){
    	$hash = $request->header('Authorization', null);

    	$jwtAuth = new JwtAuth();
    	$checkToken = $jwtAuth->checkToken($hash);

    	if($checkToken){
    		// Comprobar que existe el registro
    		$car = Car::find($id);

    		// Borrarlo
    		$car->delete();

    		// Devolverlo
    		$data = array(
    			'car' => $car,
    			'status' => 'success',
    			'code' => 200
    		);
    	}else{
    		$data = array(
    			'status' => 'error',
    			'code' 	=> 400,
    			'message' => 'Login incorrecto !!'
    		);
    	}

    	return response()->json($data, 200);
    }



}
