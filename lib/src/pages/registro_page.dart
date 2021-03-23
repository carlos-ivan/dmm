import 'package:flutter/material.dart';

class RegistroPage extends StatefulWidget {
  @override
  _RegistroPage createState() => _RegistroPage();
}

class _RegistroPage extends State<RegistroPage> {
  FocusNode nombreFocus;
  FocusNode emailFocus;
  FocusNode passFocus;

  String nombre;
  String email;
  String pass;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Silva Arteaga Carlos Ivan'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    'Unete a ValShop',
                    style: TextStyle(
                        fontSize: 60,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      labelText: 'Nombre y Apellido',
                      hintText: 'Ejemplo: Juan Perez',
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
                  onEditingComplete: () => requestFocus(context, emailFocus),
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      labelText: 'Email',
                      hintText: 'Ejemplon: valshop123@gmail.com',
                      prefixIcon: Icon(Icons.email)),
                  onSaved: (value) {
                    email = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Campo vacio';
                    } else {
                      return null;
                    }
                  },
                  focusNode: this.emailFocus,
                  onEditingComplete: () => requestFocus(context, passFocus),
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      labelText: 'Contraseña',
                      hintText: 'Ejemplon: valshop123',
                      prefixIcon: Icon(Icons.lock)),
                  onSaved: (value) {
                    pass = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Campo vacio';
                    } else {
                      return null;
                    }
                  },
                  focusNode: this.passFocus,
                  obscureText: true,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 250.0,
                  child: Text(
                    'Rellene los 3 campos para continuar con el registro',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 250.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.blue, style: BorderStyle.solid),
                  ),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        formKey.currentState.save();

                        if (nombre.compareTo('Carlos Silva') == 0 &&
                            email.compareTo('ivan123@gmail.com') == 0) {
                          Navigator.pushNamed(context, 'inicio',
                              arguments: Argumentos(
                                  nombre: this.nombre,
                                  email: this.email,
                                  pass: this.pass));
                        } else {
                          print('Datos incorrectos');
                        }
                      }
                    },
                    child: Text('Registrar'),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 250.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.blue, style: BorderStyle.solid),
                  ),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        formKey.currentState.save();
                      }
                    },
                    child: Text('Iniciar'),
                  ),
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
    emailFocus = FocusNode();
    passFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    nombreFocus.dispose();
    emailFocus.dispose();
    passFocus.dispose();
  }
}

class Argumentos {
  String nombre;
  String email;
  String pass;

  Argumentos({this.nombre, this.email, this.pass});
}
