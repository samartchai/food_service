import 'package:flutter/material.dart';
import 'package:food_service/controller/bottom_navigation_controller.dart';
import 'package:food_service/view/analyze_page.dart';
import 'package:food_service/view/mainkitchen_page.dart';
import 'package:food_service/view/order_page.dart';
import 'package:food_service/view/orderstatus_page.dart';
import 'package:food_service/view/product_page.dart';
import 'package:get/get.dart';

class NavigationPage extends StatelessWidget {
  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());
  NavigationPage({Key? key}) : super(key: key);

  Color darkblue = const Color(0xff002748);
  Color darkGreen = const Color(0xff007333);
  Color darkPink = const Color(0xffFF35EE);

  final screens = [
    const ProductPage(),
    const OrderPage(),
    const OrderstatusPage(),
    const MainkitchenPage(),
    const AnalyzePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
          () => IndexedStack(
            index: bottomNavigationController.selectedIndex.value,
            children: screens,
          ),
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white38,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            onTap: (index) {
              bottomNavigationController.changeIndex(index);
            },
            currentIndex: bottomNavigationController.selectedIndex.value,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.fastfood_outlined),
                label: "Product",
                backgroundColor: darkblue,
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.food_bank_outlined),
                label: "Order",
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.table_bar_outlined),
                label: "OrderStatus",
                backgroundColor: darkGreen,
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.kitchen_outlined),
                label: "Mainkitchen",
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.analytics_outlined),
                label: "Analyze",
                backgroundColor: Colors.brown[800],
              ),
            ],
          ),
        ));
  }
}
