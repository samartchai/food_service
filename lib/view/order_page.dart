import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List data = [
    {"color": Color(0xffff6968)},
    {"color": Color(0xffff6968)},
    {"color": Color(0xffff6968)},
    {"color": Color(0xffff6968)},
    {"color": Color(0xffff6968)},
    {"color": Color(0xffff6968)},
    {"color": Color(0xffff6968)},
    {"color": Color(0xffff6968)},
    {"color": Color(0xffff6968)},
    {"color": Color(0xffff6968)},
    {"color": Color(0xffff6968)},
    {"color": Color(0xffff6968)},
  ];

  int a = 10;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Order"),
            centerTitle: true,
            backgroundColor: Colors.green,
            bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              labelPadding: EdgeInsets.symmetric(horizontal: 30),
              tabs: [
                Tab(
                  child: Text("All"),
                ),
                Tab(
                  child: Text("Food"),
                ),
                Tab(
                  child: Text("Snacks"),
                ),
                Tab(
                  child: Text("Water"),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GridView.builder(
                    itemCount: data.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) {
                      return Card(
                        color: data[index]["color"],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      );
                    },
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GridView.builder(
                    itemCount: data.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) {
                      return Card(
                        color: data[index]["color"],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      );
                    },
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GridView.builder(
                    itemCount: data.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) {
                      return Card(
                        color: data[index]["color"],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      );
                    },
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GridView.builder(
                    itemCount: data.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) {
                      return Card(
                        color: data[index]["color"],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      );
                    },
                  ),
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     SizedBox(
              //       width: 150,
              //       height: 50,
              //       child: ElevatedButton(
              //         child: Text('Cart'),
              //         onPressed: () {},
              //       ),
              //     ),
              //     SizedBox(
              //       width: 150,
              //       height: 50,
              //       child: ElevatedButton(
              //         child: Text('Cart'),
              //         onPressed: () {},
              //       ),
              //     ),
              //   ],
              // ),
            ],
          )
          // body: Center(
          //] child:

          ),
    );
  }
}
