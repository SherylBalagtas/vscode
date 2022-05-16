// ignore_for_file: unnecessary_const, dead_code, prefer_typing_uninitialized_variables, avoid_unnecessary_containers, unnecessary_new, prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:shared_preferences/shared_preferences.dart';


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
      routes: <String, WidgetBuilder>{
        NextPage.routeName: (context) => new NextPage(),
      }
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
      body: Container(
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
                ///  suffixIcon: Icon(Icons.email),
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
                  label: Text('Inflation Rate %: '),
                //  hintText: 'Enter the Value',
                ),
              ),
            ),
            ElevatedButton(
              child: const Text('Calculate'),
              onPressed: (){},
                saveName();
            )
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 123, 202, 126),
    );
  }

  void saveName() {
    String name = _controller.Text;
    saveNamePreference(name).then((bool committed)
    Navigator.of(context).pushNamed(Nextpage.routeName);
  }
}




Future<bool> saveNamePreference(String name) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("name", name);
  return prefs.clear();
}

Future<String?> getNamePreference() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? name = prefs.getString("name");
  return name;
}

class NextPage extends StatefulWidget {
  static String routeName = "/nextpage";
  @override
  _NextPageState createState() => new _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: ListTile(
        title: Text('Present Age: '),
      ),
    );
  }
}