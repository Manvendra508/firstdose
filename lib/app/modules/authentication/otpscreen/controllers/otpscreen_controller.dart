import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../../data/apis.dart';

class OtpscreenController extends GetxController {
  String phonenumber = '0101010101';
  String otppin = '';
  OtpscreenController({required this.phonenumber});

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
      Map bodydata = {"otp": otppin};
      var url = Uri.parse(Apis.otpApiUrl);
      final response = await http.post(url, body: bodydata);
      if (response.statusCode == 200) {}
    } catch (e) {
      throw Exception(e);
    }
  }
}
