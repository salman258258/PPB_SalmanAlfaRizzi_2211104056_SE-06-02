import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Rekomendasi wisata'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title:const Text('Recomended Destination',
        style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      
     body: Container(
      padding: EdgeInsets.all(30.0),
      margin: EdgeInsets.symmetric(vertical: 80.0),
      child: Column(
        children: [Center(
           child:  Text('Rio de janiero',
            style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
        ),
        SizedBox(height: 20,),
        Center(
          child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Cidade_Maravilhosa.jpg/2880px-Cidade_Maravilhosa.jpg'),
        ),
        SizedBox(height: 10,),
        Center(
          child: Text('Rio de Janeiro is a vibrant city in Brazil, known for its stunning beaches, iconic landmarks like the Christ the Redeemer statue, and lively cultural festivals such as Carnival. Nestled between mountains and the Atlantic Ocean, Rio is famous for its unique natural beauty, rich music and dance traditions, and energetic atmosphere.',
          style: TextStyle(fontSize: 12),),
        ),
        SizedBox(height: 20,),
        Row(
  children: [
    Expanded(
      child: ElevatedButton(
        onPressed: () {},
        child: Text('GO'),
      ),
    ),
  ],
)
        ],
      )
     ),
    );
  } 
  
}
