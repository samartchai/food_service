import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/bottom_navigation_controller.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List data = [
    {"color": const Color(0xffff6968)},
    {"color": const Color(0xffff6968)},
    {"color": const Color(0xffff6968)},
    {"color": const Color(0xffff6968)},
    {"color": const Color(0xffff6968)},
    {"color": const Color(0xffff6968)},
    {"color": const Color(0xffff6968)},
    {"color": const Color(0xffff6968)},
    {"color": const Color(0xffff6968)},
    {"color": const Color(0xffff6968)},
    {"color": const Color(0xffff6968)},
    {"color": const Color(0xffff6968)},
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
              // all
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GridView.builder(
                    itemCount: data.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
              // food
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      // grid view
                      GridView.builder(
                        itemCount: data.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Card(
                            color: data[index]["color"],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          );
                        },
                      ),

                      // elevated button
                      ElevatedButton(
                        onPressed: () {
                          // do something
                        },
                        child: const Text("This is a button"),
                      ),
                      // dropdown
                      GetBuilder<BottomNavigationController>(
                        builder: (controller) {
                          return DropdownButton(
                            value: controller.dropdownValue.value,
                            items: const [
                              DropdownMenuItem<String>(
                                value: 'one',
                                child: Text("One"),
                              ),
                              DropdownMenuItem<String>(
                                value: 'two',
                                child: Text("Two"),
                              ),
                              DropdownMenuItem<String>(
                                value: 'three',
                                child: Text("Three"),
                              )
                            ],
                            onChanged: (value) {
                              // set value here
                              controller.dropdownValue.value = value!;
                              controller.update();
                            },
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
              // snack
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GridView.builder(
                    itemCount: data.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) {
                      return Card(
                        color: data[index]["color"],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      );
                    },
                  ),
                ),
              ),
              // water
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GridView.builder(
                    itemCount: data.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) {
                      return Card(
                        color: data[index]["color"],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
