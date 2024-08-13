import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Universidad App',
      initialRoute: '/',
      routes: {
        '/': (context) => MenuPrincipal(),
        '/noticias': (context) => Noticias(),
        '/tareas': (context) => ListaTareas(),
        '/cambioMonedas': (context) => CambioMonedas(),
        '/podcast': (context) => Podcast(),
      },
    );
  }
}

class MenuPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú Principal'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Noticias'),
            onTap: () {
              Navigator.pushNamed(context, '/noticias');
            },
          ),
          ListTile(
            title: Text('Lista de Tareas'),
            onTap: () {
              Navigator.pushNamed(context, '/tareas');
            },
          ),
          ListTile(
            title: Text('Cambio de Monedas'),
            onTap: () {
              Navigator.pushNamed(context, '/cambioMonedas');
            },
          ),
          ListTile(
            title: Text('Podcast'),
            onTap: () {
              Navigator.pushNamed(context, '/podcast');
            },
          ),
        ],
      ),
    );
  }
}

class Noticias extends StatelessWidget {
  final List<Map<String, String>> noticias = [
    {
      'titulo': 'Conferencia sobre tecnología',
      'imagen': 'https://via.placeholder.com/150',
      'descripcion': 'Una conferencia sobre las últimas tendencias en tecnología.'
    },
    {
      'titulo': 'Nueva biblioteca en la universidad',
      'imagen': 'https://via.placeholder.com/150',
      'descripcion': 'La universidad ha inaugurado una nueva biblioteca moderna.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
      ),
      body: ListView.builder(
        itemCount: noticias.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.network(noticias[index]['imagen']!),
              title: Text(noticias[index]['titulo']!),
              subtitle: Text(noticias[index]['descripcion']!),
            ),
          );
        },
      ),
    );
  }
}