import 'package:flutter/material.dart';

void main() {
  runApp(const BlackTop());
}

class BlackTop extends StatelessWidget {
  const BlackTop({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blacktop 0.0.1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.black,
          secondary: Colors.grey,
        ),
      ),
      home: const HomePage(title: 'blacktop'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Hello World',
            ),
          ],
        ),
      ),
    );
  }
}
