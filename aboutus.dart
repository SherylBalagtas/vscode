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
         child: FlutterLogo(size: MediaQuery.of(context).size.height)
     );
   }
}

// ignore: use_key_in_widget_constructors
class SecondScreen extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         leading: Icon(Icons.menu),
       ),
       // ignore: avoid_unnecessary_containers
       body: Container(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             const Text('About Us', style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),

             Container(
               padding: const EdgeInsets.all(15),
               child: const Text("Lorem ipsum dolor sit amet. 33 internos quis est incidunt quia aut alias nisi! Et nulla quod ab nulla consequatur sed voluptatem rerum. Est quasi voluptatem et veniam dolores et voluptas illum At delectus dolorem. In quibusdam internos est corrupti omnis aut saepe itaque est commodi obcaecati est quaerat dolorem.",
               textAlign: TextAlign.justify,
               )
              ),

              Container(
                padding: const EdgeInsets.all(15),
                child: const Text("Qui mollitia rerum vel quibusdam delectus qui quis cumque non labore dolorum sit veniam rerum? Vel harum molestiae sit obcaecati voluptas id iure enim et officia aliquam sed vitae laudantium. Molestiae possimus eos explicabo dolor qui natus dignissimos in deserunt inventore. Eum itaque explicabo ea internos amet sed facilis illo.",
                textAlign: TextAlign.justify,
                ),
              )
           ]
         ),
       ),
       backgroundColor: const Color.fromARGB(255, 123, 202, 126),
    );
  }
}