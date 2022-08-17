import 'package:flutter/material.dart';
import 'package:navigation_basics/pages/other/other_page.dart';

class HomePage extends StatefulWidget {
  static const String route = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const OtherPage(
                      data: 456,
                    )));
          },
          color: Colors.red,
          child: const Text('Other'),
        ),
      ),
    );
  }
}
