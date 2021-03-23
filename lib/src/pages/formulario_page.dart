import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  FocusNode nombreFocus;
  FocusNode apellidoFocus;
  FocusNode edadFocus;

  String nombre;
  String apellido;
  String edad;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Formulario'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: 'Nombre',
                      hintText: 'Ejemplo: Juan',
                      prefixIcon: Icon(Icons.person)),
                  onSaved: (value) {
                    nombre = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Campo vacio';
                    } else {
                      return null;
                    }
                  },
                  focusNode: this.nombreFocus,
                  onEditingComplete: () => requestFocus(context, apellidoFocus),
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: 'Apellido',
                      hintText: 'Ejemplon: Perez',
                      prefixIcon: Icon(Icons.person)),
                  onSaved: (value) {
                    apellido = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Campo vacio';
                    } else {
                      return null;
                    }
                  },
                  focusNode: this.apellidoFocus,
                  onEditingComplete: () => requestFocus(context, edadFocus),
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Edad',
                      hintText: 'Ejemplon: 30',
                      prefixIcon: Icon(Icons.person)),
                  onSaved: (value) {
                    edad = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Campo vacio';
                    } else {
                      return null;
                    }
                  },
                  focusNode: this.edadFocus,
                ),
                SizedBox(
                  height: 50.0,
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    if (formKey.currentState.validate()) {
                      formKey.currentState.save();

                      if (nombre.compareTo('Carlos') == 0 &&
                          apellido.compareTo('Silva') == 0) {
                        Navigator.pushNamed(context, 'formulario_dos',
                            arguments: Argumentos(
                                nombre: this.nombre,
                                apellido: this.apellido,
                                edad: this.edad));
                      } else {
                        print('Datos incorrectos');
                      }
                    }
                  },
                  child: Text('Enviar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void requestFocus(BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus(focusNode);
  }

  @override
  void initState() {
    super.initState();
    nombreFocus = FocusNode();
    apellidoFocus = FocusNode();
    edadFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    nombreFocus.dispose();
    apellidoFocus.dispose();
    edadFocus.dispose();
  }
}

class Argumentos {
  String nombre;
  String apellido;
  String edad;

  Argumentos({this.nombre, this.apellido, this.edad});
}
