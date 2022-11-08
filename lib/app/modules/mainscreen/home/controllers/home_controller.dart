import 'package:firstdose/app/models/shopbycat.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<ShopByCatModel> shjopbycat = [
    ShopByCatModel(
        catImg: 'assets/images/homepageicons/gd1.png', catTitle: 'Skin Care'),
    ShopByCatModel(
        catImg: 'assets/images/homepageicons/gd2.png', catTitle: 'Pain Relief'),
    ShopByCatModel(
        catImg: 'assets/images/homepageicons/gd3.png', catTitle: 'Vitamins'),
    ShopByCatModel(
        catImg: 'assets/images/homepageicons/gd4.png', catTitle: 'Skin Care'),
    ShopByCatModel(
        catImg: 'assets/images/homepageicons/gd5.png', catTitle: 'Pain Relief'),
    ShopByCatModel(
        catImg: 'assets/images/homepageicons/gd6.png', catTitle: 'Vitamins'),
  ];
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
}
