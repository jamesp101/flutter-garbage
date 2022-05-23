import 'package:flutter/material.dart';
import 'package:garbagedayt/login.dart';
import 'package:garbagedayt/map.dart';

void main() {
  runApp(const Main(title: 'Hello',));
}
class Main extends StatefulWidget {
  const Main({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Main> createState() => _Material();
}

class _Material extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Garbage Tracker',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal)
                .copyWith(secondary: Colors.deepOrange)),
        initialRoute: '/login',
        routes: {
          "/maps": (context) => const MyApp(),
        },
        home: const LoginPage(),
      );
  }
}



