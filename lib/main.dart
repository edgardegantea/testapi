import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'pages/posts.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/productos': (context) => Productos(),
        '/proveedores': (context) => Proveedores(),
        '/inventario': (context) => Inventario(),
        '/configuracion': (context) => Configuracion(),
        '/posts': (context) => MyApp(),
      },
    ));

class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text('Página Home'),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Usuario'),
              accountEmail: Text('usuario@mail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text(
                  'E',
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),

            /*
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menú'),
              curve: Curves.bounceInOut,

            ), */
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Text(
                'Principal',
                style: Theme.of(context).textTheme.caption,
                textAlign: TextAlign.start,
              ),
            ),
            ListTile(
              title: const Text('Posts'),
              leading: const Icon(Icons.article),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ));
              },
            ),
            ListTile(
              title: const Text('Productos'),
              leading: const Icon(Icons.article),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Productos(),
                    ));
              },
            ),
            ListTile(
              title: const Text('Proveedores'),
              leading: Icon(Icons.group),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Proveedores(),
                    ));
              },
            ),
            ListTile(
              title: const Text('Inventario'),
              leading: Icon(Icons.inventory),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Inventario(),
                    ));
              },
            ),
            Divider(
              height: 20,
              color: Colors.blue,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Text(
                'Otros',
                style: Theme.of(context).textTheme.caption,
                textAlign: TextAlign.start,
              ),
            ),
            ListTile(
              title: const Text('Configuración'),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Configuracion(),
                    ));
              },
            ),
          ],

        ),

      ),

    );
  }
}

class Productos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
      ),
      body: Center(
        child: Text('Pantalla de productos'),
      ),
    );
  }
}

class Proveedores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Proveedores'),
      ),
      body: Center(
        child: Text('Pantalla de proveedores'),
      ),
    );
  }
}

class Inventario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventario'),
      ),
      body: Center(
        child: Text('Pantalla de inventario'),
      ),
    );
  }
}

class Configuracion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración'),
      ),
      body: Center(
        child: Text('Pantalla de configuración'),
      ),
    );
  }
}
