import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  String balance = "R\$ 22.234,02";
  bool eyesValue = true;
  String creditCardValue = "R\$ 2.234,02";

  void showValue() {
    eyesValue = !eyesValue;

    update();
  }
}
