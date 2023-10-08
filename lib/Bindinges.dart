import 'package:get/get.dart';
import 'package:new_flutter_ui/controller/detalisController.dart';
import 'package:new_flutter_ui/controller/testController.dart';

class myInjection extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => testController(), fenix: true);
    Get.lazyPut(() => detalisController(), fenix: true);
  }
}
