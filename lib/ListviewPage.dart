import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:proyecto_final/provider/book_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListviewPage extends StatefulWidget {
  @override
  _ListviewPage createState() => _ListviewPage();
}

class _ListviewPage extends State<ListviewPage> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  DataSearchProvider _provider = new DataSearchProvider();
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  var currentData;
  String _nombre, _edad, _isDeudor;
  var dataFromFirestore =
      FirebaseFirestore.instance.collection('autobuses').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _provider.bringAllData(context));
  }
}
