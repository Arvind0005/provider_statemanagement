import 'package:flutter/cupertino.dart';

class MyCart extends ChangeNotifier {
  List cartlist = [];
  addtocart(int number) {
    cartlist.add(number);
    notifyListeners();
  }

  remove_fromlast_cart() {
    cartlist.removeLast();
    notifyListeners();
  }
}
