import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/bottom_navigation_controller.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: size.height,
        //decoration: BoxDecoration(color: Colors.deepPurple),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // do something
                },
                child: const Text("This is a button"),
              ),
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
    );
  }
}
