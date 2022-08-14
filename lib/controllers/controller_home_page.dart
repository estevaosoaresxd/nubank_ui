import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  String balance = "R\$ 22.234,02";
  bool eyesValue = true;

  void showValue() {
    eyesValue = !eyesValue;

    update();
  }
}
