import 'myMessage_controller.dart';
import 'package:get/get.dart';

class MyMessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyMessageController>(
        () => MyMessageController()

    );
  }
}