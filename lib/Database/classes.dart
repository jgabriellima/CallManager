import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String userId;
  List<Call> calls;

  
}

class Call {
  String name;
  String phoneNumber;
  String description;
  String reminderDate;
  String reminderTime;

  Call(
    this.name,
    this.phoneNumber,
    this.description,
    this.reminderDate,
    this.reminderTime,
  );
}
