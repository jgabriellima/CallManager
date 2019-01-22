import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseModel {
  /// All important references in Firestore
  _userRef() => Firestore.instance.collection("Users");
  _userCallsRef(String userId) =>_userRef().document(userId).collection("Calls");

  /// All important streams of data from Firestore mapped to data classes

  // Get a DocumentSnapshot representing a User
  Stream<DocumentSnapshot> _userSnap(String userId)
    => _userRef().document(userId).snapshots();

  // Get a user's Calls
  Stream<QuerySnapshot> _userCalls(String userId)
    => _userCallsRef(userId).snapshots();
}