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

class ListaTareas extends StatelessWidget {
  final List<String> tareas = [
    'Tarea de Matemáticas',
    'Foro de Historia',
    'Examen de Física',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tareas'),
      ),
      body: ListView.builder(
        itemCount: tareas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tareas[index]),
          );
        },
      ),
    );
  }
}


class CambioMonedas extends StatefulWidget {
  @override
  _CambioMonedasState createState() => _CambioMonedasState();
}

class _CambioMonedasState extends State<CambioMonedas> {
  String monedaSeleccionada = 'Dólar';
  double tasaCambio = 24.0;
  double valorInput = 0.0;
  double resultado = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambio de Monedas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            DropdownButton<String>(
              value: monedaSeleccionada,
              onChanged: (String? newValue) {
                setState(() {
                  monedaSeleccionada = newValue!;
                  tasaCambio = monedaSeleccionada == 'Dólar' ? 24.0 : 28.0;
                });
              },
              items: <String>['Dólar', 'Euro']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  valorInput = double.parse(value);
                  resultado = valorInput * tasaCambio;
                });
              },
              decoration: InputDecoration(labelText: 'Valor en Lempiras'),
            ),
            SizedBox(height: 20),
            Text('Resultado: $resultado $monedaSeleccionada'),
          ],
        ),
      ),
    );
  }
}

class Podcast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Podcast'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.podcasts, size: 100),
            SizedBox(height: 20),
            Text('Reproduciendo...'),
            Slider(
              value: 30,
              max: 100,
              onChanged: (value) {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.skip_previous),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.play_arrow),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.skip_next),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
