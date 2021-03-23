import 'package:application_prac/src/providers/menu_provider.dart';
import 'package:application_prac/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prueba de ListView'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarDatos(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(context, snapshot.data),
        );
      },
    );
  }

  List<Widget> _listaItems(BuildContext context, List<dynamic> data) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        leading: obtenerIcono(opt['icono']),
        title: Text(opt['texto']),
        trailing: Icon(Icons.keyboard_arrow_right, size: 35),
        onTap: () {
          Navigator.pushNamed(context, opt['rutas'], arguments: opt['rutas']);
        },
      );
      opciones.add(widgetTemp);
      opciones.add(Divider());
    });

    return opciones;
  }
}
