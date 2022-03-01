import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  String companyName = 'CCT';

  void _changeCompanyName() {
    setState(() {
      companyName = 'Flutter';
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('init footer');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$companyName',
          style: Theme.of(context).textTheme.headline4,
        ),
        RaisedButton(
          onPressed: _changeCompanyName,
          child: Text('Click Me!!'),
        )
      ],
    );
  }
}
