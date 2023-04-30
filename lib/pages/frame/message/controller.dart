import 'package:communications/common/routes/names.dart';
import 'package:communications/pages/frame/message/state.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MessageController extends GetxController {
  MessageController();
  final state = MessageState();
  void goProfile() async {
    await Get.toNamed(AppRoutes.Profile);
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
}
