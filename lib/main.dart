import 'package:cyoa_app/pages/Catergories.dart';
import 'package:cyoa_app/constant/Stories.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CYOA App',
      // theme: ThemeData(
      //   appBarTheme: AppBarTheme(
      //       centerTitle: true, backgroundColor: Colors.blue.shade100),
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      theme: ThemeData(fontFamily: 'Ubuntu'),
      // theme: ThemeData.dark().copyWith(
      //   textTheme: ThemeData.dark().textTheme.apply(
      //         fontFamily: 'Ubuntu', // Set Ubuntu as the default font
      //       ),
      // ),
      home: StoryPage(
        title: 'something',
      ),
    );
  }
}
