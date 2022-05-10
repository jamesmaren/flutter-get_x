import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:getx_flutter_project1/controller/list_controller.dart';
import 'package:getx_flutter_project1/controller/tap_controller.dart';

Future<void> init() async {
  Get.lazyPut(() => TapController());
  Get.lazyPut(() => ListController());
}
