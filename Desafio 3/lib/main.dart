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
      title: 'Appzinho 3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'ConcertOne',
      ),
      home: const MyHomePage(title: ''),
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: 200,
                height: 100,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      left: 30,
                      child: Image.asset(
                        "assets/images/volleyball.png",
                        width: 40,
                        height: 40,
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 80,
                      child: Text(
                        'Volley',
                        style: TextStyle(color: Colors.grey[50], fontSize: 35),
                      ),
                    ),
                    Positioned(
                      top: 57,
                      left: 80,
                      child: Text(
                        'do fim de semana',
                        style: TextStyle(color: Colors.grey[50], fontSize: 9),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                        ),
                        child: const Text(
                          "TIMES",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        )),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Teams(text1: "Sicranos", text2: "3"),
                      Teams(text1: "Autoconvidados", text2: "3"),
                      Teams(text1: "Ziraldos", text2: "4"),
                      Teams(text1: "Sparrings", text2: "5"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Jogo casado'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Iniciar'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: const Color.fromARGB(255, 7, 57, 98),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1000),
          ),
          child: Center(
            child: Text(
              '+',
              style: TextStyle(color: Colors.grey[50], fontSize: 45, height: 1),
            ),
          ),
        ),
      ),
    );
  }
}

class Teams extends StatelessWidget {
  final String text1;
  final String text2;

  const Teams({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "$text1  ",
          style: const TextStyle(color: Colors.yellow, fontSize: 24),
        ),
        Text(
          textAlign: TextAlign.center,
          text2,
          style: const TextStyle(
              color: Color.fromARGB(255, 7, 57, 98), fontSize: 30),
        ),
        const RotatedBox(
          quarterTurns: 3,
          child: Text(
            'jogadores',
            style: TextStyle(fontSize: 8),
          ),
        )
      ],
    );
  }
}
