import 'package:firstdose/app/data/apis.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class LoginController extends GetxController {
  final phone = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    phone.dispose();
  }

  loginUser() async {
    if (formKey.currentState!.validate()) {
      try {
        Map bodydata = {"phone_number": phone.text};
        var url = Uri.parse(Apis.loginApiUrl);
        final response = await http.post(url, body: bodydata);
        if (response.statusCode == 200) {}
      } catch (e) {
        throw Exception(e);
      }
    }
  }
}
