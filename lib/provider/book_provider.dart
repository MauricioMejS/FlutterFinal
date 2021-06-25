import 'package:proyecto_final/models/libros_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataSearchProvider extends GetxController {
  Widget searchQuery(BuildContext context, String query) {
    var documentList = FirebaseFirestore.instance
        .collection('autobuses')
        .where('nombre', isGreaterThanOrEqualTo: query)
        .snapshots();

    return StreamBuilder<QuerySnapshot>(
      stream: documentList,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();

        return DataTable(
          columns: [
            DataColumn(label: Text('Titulo')),
            DataColumn(label: Text('Precio')),
            DataColumn(label: Text('Descripcion'))
          ],
          rows: buildList(context, snapshot.data.docs),
        );
      },
    );
  }

  Widget bringAllData(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('Libros').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();

        return ListView(children: [
          DataTable(
            columns: [
              DataColumn(label: Text('Titulo')),
              DataColumn(label: Text('Precio')),
              DataColumn(label: Text('Descripcion'))
            ],
            rows: buildList(context, snapshot.data.docs),
          )
        ]);
      },
    );
  }

  List<DataRow> buildList(
      BuildContext context, List<DocumentSnapshot> snapshot) {
    return snapshot.map((data) => _buildListItem(context, data)).toList();
  }

  DataRow _buildListItem(BuildContext context, DocumentSnapshot data) {
    final libro = Libros.fromSnapshot(data);

    return DataRow(cells: [
      DataCell(Text(libro.titulo)),
      DataCell(Text(libro.precio)),
      DataCell(Text(libro.descripcion))
    ]);
  }
}
