import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';

class ListController extends GetxController {
  RxList _list = [].obs;
  RxList get list => _list;

  void setValues(int x) {
    _list.add(x);
    print(_list);
  }
}
