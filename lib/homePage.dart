import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/mycart.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int length = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                color: Colors.grey,
                //    width: 300,
                child: Center(
                    child: Consumer<MyCart>(
                        builder: (context, mycart, child) =>
                            Text("${mycart.cartlist.length.toString()}"))),
              ),
            ),
            Container(
                height: 350,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Consumer<MyCart>(
                              builder: (context, mycart, child) =>
                                  GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Cart_Page();
                                  }));
                                },
                                child: Container(
                                  height: 200,
                                  width: 200,
                                  color: Colors.grey,
                                  child: Center(
                                      child: Text("${index.toString()}")),
                                ),
                              ),
                            ),
                          ),
                          Consumer<MyCart>(
                            builder: (context, mycart, child) => RaisedButton(
                                child: Text("add to cart"),
                                onPressed: () {
                                  mycart.addtocart(index);
                                  length = mycart.cartlist.length;
                                  print("length ${length.toString()}");
                                }),
                          ),
                        ],
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
// SingleChildScrollView(
//         physics: ScrollPhysics(),
//         child: Column(
//           children: [
//             Container(
//               child: ListView.builder(
//                   physics: NeverScrollableScrollPhysics(),
//                   shrinkWrap: true,
//                   scrollDirection: Axis.horizontal,
//                   itemCount: 10,
//                   itemBuilder: (
//                     context,
//                     index,
//                   ) {
//                     return Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         //  mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             color: Colors.grey,
//                             height: 100,
//                             width: 100,
//                             child: Center(child: Text("$index")),
//                           ),
//                           RaisedButton(
//                               child: Text("add to cart"),
//                               onPressed: () {
//                                 setState(() {
//                                   cartlist.add(index);
//                                 });
//                                 print(index);
//                                 print(cartlist);
//                               }),
//                         ],
//                       ),
//                     );
//                   }),
//             ),
//           ],
//         ),
//       )
