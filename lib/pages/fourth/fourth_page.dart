import 'package:flutter/material.dart';
import 'package:navigation_basics/pages/home/home_page.dart';
import 'package:navigation_basics/pages/other/other_page.dart';

class FourthPage extends StatefulWidget {
  static const String route = '/fourth';
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fourth Page'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
                OtherPage.route, ModalRoute.withName(HomePage.route));
          },
          color: Colors.red,
          child: const Text('Other'),
        ),
      ),
    );
  }
}
