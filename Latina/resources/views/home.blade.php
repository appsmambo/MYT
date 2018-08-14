@extends('layouts.app')
@section('content')
<section class="container-fluid">
    <div class="container">
        <h1>Activación de correo</h1>
        <form method="POST" action="{{url('sendData')}}">
            {{csrf_field()}}
            <div class="form-group row">
                <label for="apellidos" class="col-sm-3 col-form-label">Apellidos</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" name="apellidos" id="apellidos" data-validation="required" data-validation-error-msg="Ingrese su apellido">
                </div>
            </div>
            <div class="form-group row">
                <label for="nombres" class="col-sm-3 col-form-label">Nombres</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" name="nombres" id="nombres" data-validation="required" data-validation-error-msg="Ingrese su nombre">
                </div>
            </div>
            <div class="form-group row">
                <label for="codigo" class="col-sm-3 col-form-label">Código</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" name="codigo" id="codigo" data-validation="required" data-validation-error-msg="Ingrese el código">
                </div>
            </div>
            <div class="form-group row">
                <label for="dia" class="col-sm-3 col-form-label">Fecha de inicio</label>
                <div class="col-sm-9">
                    <div class="row">
                        <div class="col">
                            <select name="dia" id="dia" class="form-control" data-validation="required" data-validation-error-msg="Seleccione día">
                                <option value="">Día</option>
                                @for ($i = 1; $i < 32; $i++)
                                <option value="{{$i<=9?'0'.$i:$i}}">{{$i}}</option>
                                @endfor
                            </select>
                        </div>
                        <div class="col">
                            <select name="mes" class="form-control" data-validation="required" data-validation-error-msg="Seleccione mes">
                                <option value="">Mes</option>
                                <option value="01">Enero</option>
                                <option value="02">Febrero</option>
                                <option value="03">Marzo</option>
                                <option value="04">Abril</option>
                                <option value="05">Mayo</option>
                                <option value="06">Junio</option>
                                <option value="07">Julio</option>
                                <option value="08">Agosto</option>
                                <option value="09">Setiembre</option>
                                <option value="10">Octubre</option>
                                <option value="11">Noviembre</option>
                                <option value="12">Diciembre</option>
                            </select>
                        </div>
                        <div class="col">
                            <select name="anio" class="form-control" data-validation="required" data-validation-error-msg="Seleccione año">
                                <option value="">Año</option>
                                @for ($i = 2018; $i > 1950; $i--)
                                <option value="{{$i}}">{{$i}}</option>
                                @endfor
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label for="email" class="col-sm-3 col-form-label">Correo electrónico</label>
                <div class="col-sm-9">
                    <input type="email" class="form-control" name="email" id="email" data-validation="email" data-validation-error-msg="Debe ingresar un correo electrónico">
                </div>
            </div>
            <div class="form-group row">
                <label for="clave" class="col-sm-3 col-form-label">Contraseña</label>
                <div class="col-sm-9">
                    <input type="password" class="form-control" name="clave" id="clave">
                </div>
            </div>
            <button type="submit" class="btn btn-primary float-right">Enviar</button>
            <div class="clearfix"></div>
        </form>
    </div>
</section>
@endsection