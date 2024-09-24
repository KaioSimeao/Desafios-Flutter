import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter desafio 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 1;

  @override
  Widget  build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                  width: 90,
                  color: Colors.red,
                  margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 0 ),
                ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: const Color.fromARGB(255, 34, 16, 102),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: const Color.fromARGB(255, 255, 252, 73),
                )
              ],
            ),
                Container(
                  width: 90,
                  color: const Color.fromARGB(255, 57, 143, 60),
                  margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 0 ),
                )
          ],
        ),
      ),
    );
  }
}
