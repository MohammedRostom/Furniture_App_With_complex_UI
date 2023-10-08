import 'package:get/get.dart';

class testController extends GetxController {
  var _isselected = 0;

  bool chec = false;

  get isselected => _isselected;
  List<dynamic> careg = ["All", "Sofa", "Park bench", "Armchair"];

  void SwipaValue(int index) {
    _isselected = index;
    update();
  }
}
