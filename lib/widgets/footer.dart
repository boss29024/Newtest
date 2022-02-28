import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  String companyName = 'CCT';
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('$companyName'));
  }
}
