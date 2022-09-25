import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var checkBoxLogin = false.obs;

  TextEditingController phoneController = TextEditingController();
  @override
  void onClose() {
    phoneController.dispose();
    super.onClose();
  }
}
