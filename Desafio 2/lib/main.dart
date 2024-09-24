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
      title: 'Flutter desafio 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
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
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.black,
            backgroundImage: NetworkImage(
                "https://avatars.githubusercontent.com/u/142805881?v=4"),
          ),
          Text(
            "Kaio Simeão",
            style: TextStyle(
                color: Colors.grey[50], fontSize: 60, fontFamily: 'Lobster'),
          ),
          Text(
            "FLUTTER DEVELOPER",
            style: TextStyle(color: Colors.grey[50], fontSize: 25, height: 2),
          ),
          SizedBox(
            width: 180,
            child: Divider(
              color: Colors.grey[50],
              height: 10,
            ),
          ),
          const InfoBanner(icon: Icons.phone, text: "+55 86 99563-2733"),
          const InfoBanner(icon: Icons.mail, text: "ksdasivar@aluno.uespi.br"),
          const InfoBanner(icon: Icons.alternate_email, text: "kaio_simeao"),
        ],
      ),
    );
  }
}

class InfoBanner extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoBanner({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.teal,
            ),
            Expanded(
              child: Text(
                textAlign: TextAlign.center,
                text,
                style: const TextStyle(color: Colors.teal, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
