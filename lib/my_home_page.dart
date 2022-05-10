import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_project1/controller/tap_controller.dart';
import 'package:getx_flutter_project1/first_page.dart';
import 'package:getx_flutter_project1/second_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (_) {
              return Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)),
                child: Center(
                    child: Text(
                  controller.x.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              );
            }),
            GestureDetector(
              onTap: () {
                controller.increaseX();
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)),
                child: Center(
                    child: Text(
                  "tap",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => FirstPage());
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)),
                child: Center(
                    child: Text(
                  "Go to First Page",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => SecondPage());
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)),
                child: Center(
                    child: Text(
                  "Second Page",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)),
                child: Center(
                    child: Text(
                  "tap",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
