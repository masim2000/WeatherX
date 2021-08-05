import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Asim Referral System')),
      body:Container(
              child: Text('Home'),
      )
    );
  }
}
