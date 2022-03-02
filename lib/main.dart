import 'package:flutter/material.dart';
import 'package:flutter_newtest/stack/HomeStack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.amber[700],
        canvasColor: Colors.amber[50],
        textTheme: const TextTheme(
            headline1: TextStyle(color: Colors.amber, fontSize: 50)),
        primarySwatch: Colors.amber,
      ),
      //home: const HomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeStack(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
