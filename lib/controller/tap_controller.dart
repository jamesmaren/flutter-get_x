import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0;
  int get x => _x;

  RxInt _y = 0.obs;
  RxInt get y => _y;
  RxInt _z = 0.obs;
  int get z => _z.value;

  void totalXY() {
    _z.value = x + _y.value;
    print(_z);
  }

  void increaseX() {
    _x++;
    update();
  }

  void decreaseX() {
    _x--;
    update();
  }

  void increaseY() {
    _y.value++;
  }

  void decreaseY() {
    _y.value--;
  }
}
