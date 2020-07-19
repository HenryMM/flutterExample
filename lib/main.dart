import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'Alps. Situated 1,578 meters above sea level, it is one of the ',
        softWrap: true,
      ),
    );
    // #docregion titleSection
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Texto ejemplo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.red[300],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('42'),
        ],
      ),
    );
    // #enddocregion titleSection

    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.add, 'CREATE'),
          _buildButtonColumn(color, Icons.edit, 'EDIT'),
          _buildButtonColumn(color, Icons.delete, 'DELETE'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Ejemplo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo'),
        ),
        body: ListView(
          children: [
            Image.asset('images/lake.jpg',
                width: 600, height: 240, fit: BoxFit.cover),
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
  }
}
