import 'package:cloud_firestore/cloud_firestore.dart';

class CrudService {
  final CollectionReference items =
      FirebaseFirestore.instance.collection('items');

  // CREATE
  Future<void> addItem(String name) {
    return items.add({
      'name': name,
      'createAt': Timestamp.now(),
    });
  }

  // READ
  Stream<QuerySnapshot> getItem() {
    return items
        .orderBy('createAt', descending: true)
        .snapshots();
  }

  // UPDATE
  Future<void> updateItem(String id, String name) {
    return items.doc(id).update({
      'name': name,
    });
  }

  // DELETE
  Future<void> deleteitem(String id) {
    return items.doc(id).delete();
  }
}