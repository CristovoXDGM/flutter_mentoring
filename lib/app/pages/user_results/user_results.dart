import 'package:flutter/cupertino.dart';

class UserResult extends ChangeNotifier {
  final List<String> usersList = [];
  int counter = 0;
  int get currentUserCount => counter;
  void incrementUsers() {
    counter++;

    usersList.add('value $counter');

    notifyListeners();
  }
}
