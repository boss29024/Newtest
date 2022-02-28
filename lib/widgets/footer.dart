import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

void _changeCompanyName() {}

class _FooterState extends State<Footer> {
  String companyName = 'CCT';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$companyName'),
        RaisedButton(onPressed: _changeCompanyName)
      ],
    );
  }
}
