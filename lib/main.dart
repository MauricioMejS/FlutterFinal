import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_final/LoginPage.dart';
import 'package:proyecto_final/SingUpPage.dart';
import 'package:proyecto_final/ProductPage.dart';
import 'package:proyecto_final/ListviewPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'SingUp': (BuildContext context) => SingUpPage(),
        'Product': (BuildContext context) => ProductPage(),
        'ListView': (BuildContext context) => ListviewPage(),
      },
    );
  }
}
