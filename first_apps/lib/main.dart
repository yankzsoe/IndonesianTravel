import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Indonesian Travel'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget titleSection = Container(
    padding: const EdgeInsets.all(21),
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
                  'Gunung Galunggung',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Tasikmalaya, Jawa Barat',
                style: TextStyle(
                  color: Colors.grey[500],
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
        Text('47'),
      ],
    ),
  );

  Widget textSection = Container(
    padding: const EdgeInsets.all(21),
    child: Text(
      'Mount Galunggung is an active stratovolcano in West Java, Indonesia, around 80 km southeast of the West Java provincial capital, Bandung. '
      'Mount Galunggung is part of the Sunda Arc extending through Sumatra, Java and Bali, which has resulted from the subduction of the Australian plate beneath the Eurasian plate.',
      softWrap: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/kawah_gunung_galunggung.jpg',
            width: 600,
            height: 200,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection
        ],
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
