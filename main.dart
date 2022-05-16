// ignore_for_file: unnecessary_const, dead_code, prefer_typing_uninitialized_variables

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
  
      home: const MyHomePage (title: ''),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            const Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Present Age: '),
                 // hintText: 'Please Select',
                //  suffixIcon: Icon(Icons.arrow_downward)
                ),
              ),
            ),
              const Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Retirement Age: '),
                 // hintText: 'Please Select',
                //  suffixIcon: Icon(Icons.arrow_downward)
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Present Value: '),
                //  hintText: 'Enter the Value',
                  suffixIcon: Icon(Icons.email),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Payments: '),
                 // hintText: 'Enter the Value',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Future Value: '),
                 // hintText: '',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Annual Rate %: '),
                 // hintText: 'Enter the Value',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  label: Text('Inflation Rate %: '),
                //  hintText: 'Enter the Value',
                ),
              ),
            ),
            ElevatedButton(
              child: const Text('Calculate'),
              onPressed: (){},
            )
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 123, 202, 126),
    );
  }
}
