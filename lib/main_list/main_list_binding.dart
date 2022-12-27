import 'package:get/get.dart';
import 'package:flutter_team_compliment/main_list/main_list_controller.dart';

class MainListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainListController>(() => MainListController());
  }
}
