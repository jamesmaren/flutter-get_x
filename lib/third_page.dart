import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_project1/controller/list_controller.dart';
import 'package:getx_flutter_project1/controller/tap_controller.dart';
import 'package:getx_flutter_project1/my_home_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    ListController listController = Get.put(ListController());
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      width: double.maxFinite,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF89dad0)),
                      child: Center(
                          child: Text(
                        "Total value" + controller.z.toString(),
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      width: double.maxFinite,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF89dad0)),
                      child: Center(
                          child: Text(
                        "y value" + controller.y.value.toString(),
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )),
                    ),
                  ],
                )),
            GestureDetector(
              onTap: () {
                Get.to(() => MyHomePage());
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)),
                child: Center(
                    child: Text(
                  "x value" + controller.x.toString(),
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                //Get.to(() => MyHomePage());
                Get.find<TapController>().increaseY();
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
                  "Increase Y",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                //Get.to(() => MyHomePage());
                Get.find<TapController>().totalXY();
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)),
                child: Center(
                    child: Text(
                  "Total X + Y ",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                //Get.to(() => MyHomePage());
                Get.find<ListController>()
                    .setValues(Get.find<TapController>().z);
              },
              child: Container(
                margin: const EdgeInsets.all(5),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)),
                child: Center(
                    child: Text(
                  "Save Total",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
