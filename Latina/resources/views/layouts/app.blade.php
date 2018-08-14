<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Latina, el canal del mundial | Latina</title>
        <meta name="csrf-token" content="{{csrf_token()}}">
        <link rel="stylesheet" type="text/css" href="{{url('css/bootstrap.min.css?v=')}}"/>
        <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/theme-default.min.css" rel="stylesheet"/>
        <link rel="stylesheet" type="text/css" href="{{url('css/all_general.min.css?v=')}}"/>
        <link rel="stylesheet" type="text/css" href="{{url('css/main.css?v=')}}"/>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
        <script type="text/javascript">
            var urlBase = "{{url('')}}";
        </script>
        <script src="{{url('js/main.js')}}"></script>
    </head>
    <body>
        <header>
            <div class="search_input" style="display: none;">
                <div id="search" class="form_search">
                    <div>
                        <input type="text" aria-labelledby="search one" id="input_search" autocomplete="off" placeholder="Escribe aquí tu búsqueda y presiona enter">
                        <p class="error_text" style="display: none;">Escribir 3 o más caracteres</p>
                    </div>
                    <img alt="icono cerrar" class="ico_close" src="https://cdnimg-latina-pe.secure.footprint.net/images/header/ico-close.png">
                </div>
            </div>
            <div class="header_desktop">
                <div class="logo">
                                        <a href="https://www.latina.pe"><img alt="logo latina" src="https://cdnimg-latina-pe.secure.footprint.net/images/header/logo-header.png "></a>
                      
                </div>
                <div class="menu_mid">
                    <nav class="menu_mid_list">
                        <ul>
                                                    <li class="menu_link menu_link_ "><a href="https://www.latina.pe/noticias">Noticias</a></li>
                                                                        <li class="menu_link menu_link_ "><a href="https://www.latina.pe/entretenimiento">Entretenimiento</a></li>
                                                                        <li class="menu_link menu_link_ "><a href="https://www.latina.pe/deportes">Deportes</a></li>
                                                                        <li class="menu_link menu_link_ "><a href="https://www.latina.pe/novelas">Novelas</a></li>
                                                                        <li class="menu_link menu_link_ "><img class="copa_mundial" alt="copa-mundial" src="https://cdnimg-latina-pe.secure.footprint.net/images/header/copa.png"><a class="link_copa" href="https://www.latina.pe/rusia-2018">Rusia 2018</a></li>
                                                                        <li class="menu_link menu_link_ "><a href="https://www.latina.pe/latina-play">Latina play</a></li>
                                                                        <li class="menu_link menu_link_ "><a href="https://www.latina.pe/videoteca">Videoteca</a></li>
                                                                            </ul>
                    </nav>
                </div>
                <div class="menu_right">
                    <nav class="menu_right_list">
                        <ul>
                            <!-- <li class="hashtah_header">
                                <p class="hashtah_header">#VamosConFe</p>
                            </li> -->
                            <li>
                                                        <a href="https://www.latina.pe/tvenvivo"><img alt="logo tv vivo" class="live_ico" src="https://cdnimg-latina-pe.secure.footprint.net/images/header/btn-vivo-noticias.svg"></a>
                                                </li>
                            <li class="second_menu open_social_media">
                                <img alt="icono compartir" class="share_off" src="https://cdnimg-latina-pe.secure.footprint.net/images/header/ico-share.png">
                                <img alt="icono buscar" style="display: none;" class="share_on" src="https://cdnimg-latina-pe.secure.footprint.net/images/header/ico-share-on.png">
                            </li>
                                            <li class="btn_search">
                                <img alt="icono buscar" src="https://cdnimg-latina-pe.secure.footprint.net/images/header/ico-search.png">
                            </li>
                                        </ul>
                    </nav>
                </div>
            </div>
            <div class="menu_social_media" style="display: none;">
                <div class="social_media_colorbg" style="background-color: rgba(112,0,255, 0.8)">
                    <div class="menu_social_media_list">
                        <ul class="menu_social_list menu_social_list_">
                            <li><a target="_blank" href="https://www.facebook.com/Latina.pe"><img alt="icono facebook" src="https://cdnimg-latina-pe.secure.footprint.net/images/header/ico-face-white.png"></a></li>
                            <li><a target="_blank" href="https://twitter.com/Latina_pe"><img alt="icono twitter" src="https://cdnimg-latina-pe.secure.footprint.net/images/header/ico-twitter-white.png"></a></li>
                            <li><a target="_blank" href="https://www.instagram.com/Latina.pe/"><img alt="icono instagran" src="https://cdnimg-latina-pe.secure.footprint.net/images/header/ico-insta-white.png"></a></li>
                            <li><a target="_blank" href="https://plus.google.com/u/0/+Latinape"><img alt="icono google" src="https://cdnimg-latina-pe.secure.footprint.net/images/header/ico-google-white.png"></a></li>
                            <li><a target="_blank" href="https://open.spotify.com/user/latina.pe"><img alt="icono spotify" src="https://cdnimg-latina-pe.secure.footprint.net/images/header/ico-spotify-white.png"></a></li>
                            <li class="whatsapp_link"><a href="#"><img alt="icono whatsapp" src="https://cdnimg-latina-pe.secure.footprint.net/images/header/ico-whatsapp-white.png"></a>
                                <div class="whatsapp_number fadeIn fast">
                                    <p></p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        @yield('content')
        <footer>
            <div class="footer_desktop">
                <div class="footer_top">
                    <div class="footer_top_col footer_col_one">
                        <div class="footer_logo">
                            <img alt="logo latina" src="https://cdnimg-latina-pe.secure.footprint.net/images/footer/logo.png">
                        </div>
                        <div class="footer_info">
                            <p>Latina</p>
                            <p>Av. San Felipe 968 - Jesús María</p>
                            <p>Teléfono: 219 1000</p>
                        </div>
                    </div>
                    <div class="footer_top_col footer_col_two">
                        <ul class="footer_menu">
                            <li><a href="https://www.latina.pe/noticias">Noticias</a></li>
                            <li><a href="https://www.latina.pe/entretenimiento">Entretenimiento</a></li>
                            <li><a href="https://www.latina.pe/deportes">Deportes</a></li>
                            <li><a href="https://www.latina.pe/tvenvivo">TV en vivo</a></li>
                            <li><a href="https://www.latina.pe/latina-play">Programas</a></li>
                        </ul>
                    </div>
                    <div class="footer_top_col footer_col_three">
                        <ul class="footer_menu">
                            <li><a href="https://www.latina.pe/politicas-de-privacidad">Políticas de privacidad</a></li>
                            <li><a href="https://www.latina.pe/terminos-y-condiciones">Términos y condiciones</a></li>
                            <li><a href="https://panamericana.pe/tvenvivo">Panamericana TV</a></li>
                        </ul>
                    </div>
                    <div class="footer_top_col footer_col_four">
                        <p>Síguenos</p>
                        <ul class="footer_social_media">
                            <li><a href="https://www.facebook.com/Latina.pe"><img alt="icono fcebook" src="https://cdnimg-latina-pe.secure.footprint.net/images/footer/ico-face.png"></a></li>
                            <li><a href="https://twitter.com/Latina_pe"><img alt="icono twitter" src="https://cdnimg-latina-pe.secure.footprint.net/images/footer/ico-twitter.png"></a></li>
                            <li><a href="https://www.instagram.com/Latina.pe/"><img alt="icono instagram" src="https://cdnimg-latina-pe.secure.footprint.net/images/footer/ico-instagram.png"></a></li>
                            <li><a href="https://plus.google.com/u/0/+Latinape"><img alt="icono google" src="https://cdnimg-latina-pe.secure.footprint.net/images/footer/ico-google.png"></a></li>
                            <li><a href="https://open.spotify.com/user/latina.pe"><img alt="icono spotify" src="https://cdnimg-latina-pe.secure.footprint.net/images/footer/ico-spotify.png"></a></li>
                            <li class="whatsapp_link_footer">
                                <a><img alt="icono whatsapp" src="https://cdnimg-latina-pe.secure.footprint.net/images/footer/ico-whatsapp.png"></a>
                                <div class="whatsapp_number_footer fadeIn fast">
                                    <p></p>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="footer_top_col footer_col_five">
                        <p>Disponible en:</p>
                        <ul class="footer_download_app">
                            <li><a target="_blank" href="https://itunes.apple.com/pe/app/latina/id1003739866?mt=8"><img alt="app store" src="https://cdnimg-latina-pe.secure.footprint.net/images/footer/app-store-logo.png"></a></li>
                            <li><a target="_blank" href="https://play.google.com/store/apps/details?id=com.applicaster.pe.frecuencia&amp;hl=es"><img alt="google play" src="https://cdnimg-latina-pe.secure.footprint.net/images/footer/google-play-logo.png"></a></li>
                        </ul>
                    </div>
                </div>
                <div class="footer_bot">
                    <div class="footer_bot_col">
                        <p>Medición de tráfico:</p>
                        <p class="footer_bot_col_image"><a target="_blank" href="http://www.certifica.com/es/index.html"><img alt="logo comscore" src="https://cdnimg-latina-pe.secure.footprint.net/images/footer/logo-comscore.png"></a></p>
                    </div>
                    <div class="footer_bot_col">
                        <p>Latina.pe es miembro de:</p>
                        <p class="footer_bot_col_image"><a target="_blank" href="https://iabperu.com/"><img alt="logo iab" src="https://cdnimg-latina-pe.secure.footprint.net/images/footer/logo-iab.png"></a></p>
                    </div>
                    <div class="footer_bot_col">
                        <p>Código de ética:</p>
                        <p class="footer_bot_col_image"><a target="_blank" href="http://snrtv.org.pe/"><img alt="sociedad nacional de radio y television" src="https://cdnimg-latina-pe.secure.footprint.net/images/footer/logo-sndrt.png"></a></p>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>