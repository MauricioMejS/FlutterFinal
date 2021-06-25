import 'package:cloud_firestore/cloud_firestore.dart';

class Libros {
  final int id;
  final String titulo;
  final String precio;
  final String descripcion;
  final DocumentReference reference;

  Libros.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['titulo'] != null),
        assert(map['precio'] != null),
        assert(map['descripcion'] != null),
        id = map['id'],
        titulo = map['titulo'],
        precio = map['precio'],
        descripcion = map['descripcion'];

  Libros.fromSnapshot(DocumentSnapshot snap)
      : this.fromMap(snap.data(), reference: snap.reference);
}
