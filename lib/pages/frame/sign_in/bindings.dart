import 'package:communications/pages/frame/message/controller.dart';
import 'package:communications/pages/frame/sign_in/controller.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/state_manager.dart';

class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }
}
