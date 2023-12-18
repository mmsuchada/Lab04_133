import 'package:flutter/material.dart';
import 'package:lab04_133/pages/firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple, background:Color.fromARGB(255, 183, 226, 236)),
        useMaterial3: true,
      ),
      home: const FirstPage()
    );
  }
}




