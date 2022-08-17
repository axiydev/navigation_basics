import 'package:flutter/material.dart';
import 'package:navigation_basics/pages/fourth/fourth_page.dart';

class ThirdPage extends StatefulWidget {
  static const String route = '/third';
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  late int? data;
  @override
  void didChangeDependencies() {
    Map<String, dynamic> map =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    if (map.containsKey('data') && map['data'] != null) {
      data = map['data'];
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              data.toString(),
              style: Theme.of(context).textTheme.displayLarge,
            ),
            MaterialButton(
              onPressed: () {
                ///Navigator.of(context).popUntil(ModalRoute.withName(HomePage.route));
                Navigator.of(context).pushNamed(FourthPage.route);
              },
              color: Colors.red,
              child: Text('Fourth $data'),
            ),
          ],
        ),
      ),
    );
  }
}
