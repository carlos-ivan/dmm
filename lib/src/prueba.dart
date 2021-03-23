import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trabajo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: 300.0,
              height: 50.0,
            ),
            Container(
              width: 300.0,
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  border: Border.all()),
              child: IconButton(
                  tooltip: 'Buscar',
                  icon: Icon(Icons.search_outlined),
                  onPressed: () {
                    print('Busqueda iniciada');
                  }),
            ),
            Container(
              width: 300.0,
              height: 10.0,
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 300.0,
                      child: Text(
                        'Minecraft',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 250.0,
                      child: Text(
                        'Costo MXN 1,500.00',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black45,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      width: 270.0,
                      height: 160.0,
                      child: Center(
                        child: Image.network(
                            'https://www.minecraft.net/etc.clientlibs/minecraft/clientlibs/main/resources/img/header/logo.png'),
                      ),
                    ),
                    Container(
                      width: 300.0,
                      height: 5.0,
                    ),
                    Container(
                      width: 300.0,
                      child: Text(
                        'Valorant',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 250.0,
                      child: Text(
                        'Costo MXN 150.00',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black45,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      width: 270.0,
                      height: 180.0,
                      child: Center(
                        child: Image.network(
                            'https://i.postimg.cc/Fz2DXCVM/valorant.png'),
                      ),
                    ),
                    Container(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            label: 'Compras',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
