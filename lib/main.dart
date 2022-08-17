import 'package:flutter/material.dart';
import 'package:navigation_basics/pages/fourth/fourth_page.dart';
import 'package:navigation_basics/pages/home/home_page.dart';
import 'package:navigation_basics/pages/other/other_page.dart';
import 'package:navigation_basics/pages/third/third_page.dart';

/*
Created by Axmadjon Isaqov on 09:04:57 17.08.2022
© 2022 @axi_dev 
*/

/*
Mavzu:::Navigation
*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.route: (context) => const HomePage(),
        OtherPage.route: (context) => const OtherPage(),
        ThirdPage.route: (context) => const ThirdPage(),
        FourthPage.route: (context) => const FourthPage()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.route,
    );
  }
}
