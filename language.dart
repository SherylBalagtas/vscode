// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {    
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green,
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}

// ignore: use_key_in_widget_constructors


enum Language { Tagalog, English }

class SecondScreen extends StatefulWidget {
  const SecondScreen({ Key? key }) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreen();
}

Language _language = Language.English;


class _SecondScreen extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ListTile(
              title: Text("Tagalog"),
              leading: Radio(
                value: Language.Tagalog,
                groupValue: _language,
                onChanged: (Language? value) {
                  setState(() {
                    _language = value! ;
                  });
                }
              ),
            ),

            ListTile(
              title: Text("English"),
              leading: Radio(
                value: Language.English,
                groupValue: _language,
                onChanged: (Language? value) {
                  setState(() {
                    _language = value! ;
                  });
                }
              ),
            )
            
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 123, 202, 126),
    );
  }
}