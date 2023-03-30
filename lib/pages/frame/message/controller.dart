import 'package:communications/pages/frame/message/state.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MessageController extends GetxController {
  MessageController();
  final state = MessageState();

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
}
