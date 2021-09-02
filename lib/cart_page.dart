import 'package:flutter/material.dart';

class Cart_Page extends StatefulWidget {
  final List cartList;
  const Cart_Page({Key key, this.cartList}) : super(key: key);

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
            child: Center(child: Text("${widget.cartList.length.toString()}")),
          ),
          RaisedButton(
              child: Text("delete last element"),
              onPressed: () {
                setState(() {
                  widget.cartList.removeLast();
                });
              })
        ],
      ),
    );
  }
}
