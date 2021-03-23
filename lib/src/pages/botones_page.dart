import 'package:flutter/material.dart';

class BotonesPage extends StatefulWidget {
  @override
  BotonesPageState createState() => BotonesPageState();
}

class BotonesPageState extends State<BotonesPage> {
  String _mensaje;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TiposBotones - Carlos Ivan Silva'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: 250.0,
              height: 50.0,
              decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.blue, style: BorderStyle.solid),
              ),
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () => {
                  setState(() {
                    _mensaje = 'RaisedButton';
                  }),
                },
                child: Text('RaisedButton'),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: 250.0,
              height: 50.0,
              decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.blue, style: BorderStyle.solid),
              ),
              // ignore: deprecated_member_use
              child: FlatButton(
                child: Text('FlatButton'),
                onPressed: () => {
                  setState(() {
                    _mensaje = 'FlautButton';
                  }),
                },
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: 250.0,
              height: 50.0,
              decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.blue, style: BorderStyle.solid),
              ),
              // ignore: deprecated_member_use
              child: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () => {
                  setState(() {
                    _mensaje = 'IconButton';
                  }),
                },
                color: Colors.blue,
                iconSize: 25.0,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: 250.0,
              height: 50.0,
              /*
              decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.blue, style: BorderStyle.solid),
              ),
              */
              // ignore: deprecated_member_use
              child: OutlineButton(
                textColor: Colors.blue,
                color: Colors.blue,
                child: Text('OutlineButton'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                borderSide: BorderSide(color: Colors.blue),
                onPressed: () => {
                  setState(() {
                    _mensaje = 'OutlineButton';
                  }),
                },
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              child: Text('Presionaste el boton: $_mensaje'),
            ),
          ],
        ),
      ),
    );
  }
}
