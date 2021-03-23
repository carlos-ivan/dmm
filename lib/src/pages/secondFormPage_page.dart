import 'package:application_prac/src/pages/formulario_page.dart';
import 'package:flutter/material.dart';

class SecondFromPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Argumentos parametros = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pagina del formulario'),
        ),
        body: Center(
          child: Text(
              '${parametros.nombre} ${parametros.apellido} ${parametros.edad}'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.keyboard_arrow_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
