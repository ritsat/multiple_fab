import 'package:flutter/material.dart';

enum MediaType {
  image,
  video;
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Multi FAB example"),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset("asset/pexels-pixabay-51383.jpg"),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Awesome Digital SLR Camera",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '''Image Processor: DIGIC 4+ with 9 autofocus points (important for speed and accuracy of autofocus and burst photography)
    \nVideo Resolution: Full HD video with fully manual control and selectable frame rates (great for precision and high-quality video work)
    \nConnectivity: WiFi, NFC and Bluetooth built-in (useful for remotely controlling your camera and transferring pictures wirelessly as you shoot)
    \nLens Mount: EF-S mount compatible with all EF and EF-S lenses (crop-sensor mount versatile and compact, especially when used with EF-S lenses)''',
            ),
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.share),
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.favorite),
            ),
            Expanded(child: Container()),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add_shopping_cart),
            ),
          ],
        ),
      ),
    );
  }
}
