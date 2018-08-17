<?php
namespace App\Http\Controllers;

use App\Tracking;
use App\TrackingMacro;
use Jenssegers\Agent\Agent;
use Illuminate\Http\Request;

class HomeController extends Controller
{
	public function gracias()
	{
		return view('gracias');
	}
	public function home(Request $request)
	{
		$agent = new Agent();
		$isMobile = $agent->isMobile();
		$isTablet = $agent->isTablet();
		$isDesktop = $agent->isDesktop();
		$platform = $agent->platform();
		$browser = $agent->browser();
		$ip = $request->ip();
		// grabar los datos de la visita y evento1
		$tracking = new Tracking;
		$tracking->isMobile = $isMobile;
		$tracking->isTablet = $isTablet;
		$tracking->isDesktop = $isDesktop;
		$tracking->platform = $platform;
		$tracking->browser = $browser;
		$tracking->ip = $ip;
		$tracking->evento1 = 1;
		$tracking->save();
		// grabar el id de registro
		$request->session()->put('idTracking', $tracking->id);
		// mostrar la vista
		return view('home');
	}
	public function storeTrack(Request $request)
	{
		// grabar evento2
		$idTracking = $request->session()->get('idTracking');
		// actualizar el registro $idTracking
		$tracking = Tracking::find($idTracking);
		$tracking->evento2 = 1;
		$tracking->save();
		// continuar
		return '200';
	}
	public function store(Request $request)
	{
		// grabar datos del formulario y evento3
		$idTracking = $request->session()->get('idTracking');
		$pwdStrong = preg_match('/^(?=.*[a-z|A-Z])(?=.*[A-Z])(?=.*\d).+$/', $request->input('clave'));
		$apellidos = $request->input('apellidos');
		$nombres = $request->input('nombres');
		$fecha_inicio = $request->input('anio').'-'.$request->input('mes').'-'.$request->input('dia');
		$correo = $request->input('email');
		// actualizar el registro $idTracking
		$tracking = Tracking::find($idTracking);
		$tracking->evento3 = 1;
		$tracking->pwdStrong = $pwdStrong;
		$tracking->apellidos = $apellidos;
		$tracking->nombres = $nombres;
		$tracking->fecha_inicio = $fecha_inicio;
		$tracking->correo = $correo;
		$tracking->save();
		// mostrar la vista gracias
		return redirect('gracias');
	}
	public function storeByMacro(Request $request)
	{
		$ip = $request->ip();
		$hostName = $request->input('h');
		$userName = $request->input('u');
		// grabar los datos de la visita macro
		$trackingMacro = new TrackingMacro;
		$trackingMacro->ip = $ip;
		$trackingMacro->host_name = $hostName;
		$trackingMacro->user_name = $userName;
		$trackingMacro->save();
		return response('ok', 200)->header('Content-Type', 'text/xml');
	}
}
