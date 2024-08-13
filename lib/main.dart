import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App CEUTEC',
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
        title: Text('App CEUTEC'),
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
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            // Primera noticia
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 8,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: <Widget>[
                  // Imagen de la noticia
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                    child: Image.asset(
                      'assets/noticia1.jpg',
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Información de la noticia
                  ListTile(
                    leading: Icon(Icons.article, color: Colors.deepPurple),
                    title: Text('Nueva Biblioteca Inaugurada'),
                    subtitle: Text(
                      'La universidad ha inaugurado una nueva biblioteca con más de 10,000 libros y recursos digitales.',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          // Acción para leer más
                        },
                        child: Text(
                          'LEER MÁS',
                          style: TextStyle(color: Colors.deepPurple),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Segunda noticia
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 8,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: <Widget>[
                  // Imagen de la noticia
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                    child: Image.asset(
                      'assets/noticia2.jpg',
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Información de la noticia
                  ListTile(
                    leading: Icon(Icons.sports_soccer, color: Colors.deepPurple),
                    title: Text('Equipo de Fútbol Gana el Campeonato'),
                    subtitle: Text(
                      'El equipo de fútbol de la universidad ha ganado el campeonato nacional por tercer año consecutivo.',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          // Acción para leer más
                        },
                        child: Text(
                          'LEER MÁS',
                          style: TextStyle(color: Colors.deepPurple),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Tercera noticia
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 8,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: <Widget>[
                  // Imagen de la noticia
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                    child: Image.asset(
                      'assets/noticia3.jpg',
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Información de la noticia
                  ListTile(
                    leading: Icon(Icons.science, color: Colors.deepPurple),
                    title: Text('Nueva Investigación en Energía Renovable'),
                    subtitle: Text(
                      'Científicos de la universidad han desarrollado un nuevo método para mejorar la eficiencia de la energía solar.',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          // Acción para leer más
                        },
                        child: Text(
                          'LEER MÁS',
                          style: TextStyle(color: Colors.deepPurple),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListaTareas extends StatelessWidget {
final List<Map<String, String>> tareas = [
    {
      'persona': 'Juan Pérez',
      'descripcion': 'Preparar la presentación del proyecto final.',
      'fecha': '12/08/2024',
    },
    {
      'persona': 'María López',
      'descripcion': 'Revisar el informe de resultados trimestrales.',
      'fecha': '14/08/2024',
    },
    {
      'persona': 'Carlos García',
      'descripcion': 'Enviar el reporte de asistencia de la clase de matemática.',
      'fecha': '16/08/2024',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tareas'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: tareas.length,
                itemBuilder: (context, index) {
                  final tarea = tareas[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            tarea['persona']!,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            tarea['descripcion']!,
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Fecha: ${tarea['fecha']}',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {
                  // Acción para agregar nuevas tareas
                },
                child: Icon(Icons.add),
                backgroundColor: Colors.deepPurple,
              ),
            ),
          ],
        ),
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
  double tasaCompra = 23.5;
  double tasaVenta = 24.5;
  double valorInput = 0.0;
  double resultadoCompra = 0.0;
  double resultadoVenta = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambio de Monedas'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.monetization_on, size: 40, color: Colors.deepPurple),
                SizedBox(width: 10),
                DropdownButton<String>(
                  value: monedaSeleccionada,
                  onChanged: (String? newValue) {
                    setState(() {
                      monedaSeleccionada = newValue!;
                      if (monedaSeleccionada == 'Dólar') {
                        tasaCompra = 23.5;
                        tasaVenta = 24.5;
                      } else {
                        tasaCompra = 27.0;
                        tasaVenta = 28.0;
                      }
                    });
                  },
                  items: <String>['Dólar', 'Euro']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Text(
                    'Tasa de Compra: $tasaCompra Lempiras por $monedaSeleccionada',
                    style: TextStyle(fontSize: 16, color: Colors.deepPurple),
                  ),
                  Text(
                    'Tasa de Venta: $tasaVenta Lempiras por $monedaSeleccionada',
                    style: TextStyle(fontSize: 16, color: Colors.deepPurple),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  valorInput = double.parse(value);
                  resultadoCompra = valorInput / tasaCompra;
                  resultadoVenta = valorInput / tasaVenta;
                });
              },
              decoration: InputDecoration(
                labelText: 'Valor en Lempiras',
                labelStyle: TextStyle(color: Colors.deepPurple),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple, width: 2.0),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple, width: 2.0),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                prefixIcon: Icon(Icons.attach_money, color: Colors.deepPurple),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Resultado:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.deepPurple),
            ),
            SizedBox(height: 10),
            TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                labelText:
                    'Cantidad de $monedaSeleccionada para Compra: $resultadoCompra',
                labelStyle: TextStyle(color: Colors.deepPurple),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                filled: true,
                fillColor: Colors.deepPurple.shade50,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple, width: 2.0),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple, width: 2.0),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                labelText:
                    'Cantidad de $monedaSeleccionada para Venta: $resultadoVenta',
                labelStyle: TextStyle(color: Colors.deepPurple),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                filled: true,
                fillColor: Colors.deepPurple.shade50,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple, width: 2.0),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple, width: 2.0),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
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
        title: Text('Podcast Player'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Información de la canción
            Text(
              'Artista: Coldplay',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              'Álbum: A Head Full of Dreams',
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              'Canción: Adventure of a Lifetime',
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            // Imagen del álbum
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/album_cover.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            // Controles de reproducción
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.skip_previous),
                  iconSize: 50,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.play_arrow),
                  iconSize: 50,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.skip_next),
                  iconSize: 50,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 20),
            // Botones Shuffle y Repeat
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.shuffle),
                  iconSize: 30,
                  color: Colors.deepPurple,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.repeat),
                  iconSize: 30,
                  color: Colors.deepPurple,
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
