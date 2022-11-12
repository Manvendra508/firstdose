import 'dart:convert';

import 'package:firstdose/app/data/appnavigation.dart';
import 'package:firstdose/app/data/appstrings.dart';
import 'package:firstdose/app/data/localdata.dart';
import 'package:firstdose/app/models/verifyotpmodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../../data/apis.dart';
import '../../../../data/appdialog.dart';

class OtpscreenController extends GetxController {
  String phonenumber = '0101010101';
  final appLocalData = AppLocalData();
  String otppin = '';
  RxBool proccessing = false.obs;
  OtpscreenController({required this.phonenumber});
  VerifyOtpModel _verifyOtpModel = VerifyOtpModel();

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
  }

  verifyOtp() async {
    try {
      Map bodydata = {"otp": otppin, "phone_number": phonenumber};
      var url = Uri.parse(Apis.otpApiUrl);
      final response = await http.post(url, body: bodydata);
      proccessing.value = true;
      if (response.statusCode == 200) {
        var parsedData = jsonDecode(response.body);

        _verifyOtpModel = VerifyOtpModel.fromJson(parsedData);
        if (_verifyOtpModel.status == 1) {
          appLocalData.saveloginSuccess();
          Appdialogs.showToast(Appstring.verifyOtp);
          Appnavigations.openHomeScreen();
        } else {
          Appdialogs.showToast(Appstring.somethingwentwrong);
        }
      }
    } catch (e) {
      throw Exception(e);
    } finally {
      proccessing.value = false;
    }
  }
}
