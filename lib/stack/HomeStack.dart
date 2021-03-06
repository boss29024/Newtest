import 'package:flutter/material.dart';
import 'package:flutter_newtest/page/AboutPage.dart';
import 'package:flutter_newtest/page/ContactPage.dart';
import 'package:flutter_newtest/page/HomePage.dart';

class HomeStack extends StatefulWidget {
  const HomeStack({Key? key}) : super(key: key);

  @override
  State<HomeStack> createState() => _HomeStackState();
}

class _HomeStackState extends State<HomeStack> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: 'homestack/home',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case 'homestack/home':
            builder = (BuildContext context) => const HomePage();
            break;
            case 'homestack/about':
            builder = (BuildContext context) => const AboutPage();
            break;
            case 'homestack/contact':
            builder = (BuildContext context) => const ContactPage();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute<void>(builder: builder, settings: settings);
      },
    );
  }
}
