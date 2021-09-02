import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'mycart.dart';

class Cart_Page extends StatefulWidget {
  const Cart_Page({
    Key key,
  }) : super(key: key);

  @override
  _Cart_PageState createState() => _Cart_PageState();
}

class _Cart_PageState extends State<Cart_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
                child: Consumer<MyCart>(
                    builder: (context, mycart, child) =>
                        Text("${mycart.cartlist.length.toString()}"))),
          ),
          Consumer<MyCart>(
            builder: (context, mycart, child) => RaisedButton(
                child: Text("delete last element"),
                onPressed: () {
                  mycart.remove_fromlast_cart();
                }),
          )
        ],
      ),
    );
  }
}
