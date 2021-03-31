//import 'package:app_prac/src/pages/botones_page.dart';
import 'package:application_prac/src/pages/api_pages.dart';
import 'package:application_prac/src/pages/billetera_page.dart';
//import 'package:application_prac/src/pages/formulario_page.dart';
import 'package:application_prac/src/pages/fotos_page.dart';
import 'package:application_prac/src/pages/inicio_page.dart';
import 'package:application_prac/src/pages/lugares_page.dart';
import 'package:application_prac/src/pages/mapa_page.dart';
import 'package:application_prac/src/pages/podcast_page.dart';
//import 'package:application_prac/src/pages/registro_page.dart';
import 'package:application_prac/src/pages/secondFormPage_page.dart';

import 'package:flutter/material.dart';

Map<String, WidgetBuilder> obtenerRutas() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => ApiPage(),
    'mapa': (BuildContext context) => MapaPage(),
    'billetera': (BuildContext context) => BilleteraPage(),
    'fotos': (BuildContext context) => FotosPage(),
    'podcast': (BuildContext context) => PodcastPage(),
    'lugares': (BuildContext context) => LugaresPage(),
    'formulario_dos': (BuildContext context) => SecondFromPage(),
    'inicio': (BuildContext context) => InicioPage()
  };
}
