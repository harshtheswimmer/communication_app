import 'package:communications/common/routes/routes.dart';
import 'package:communications/pages/frame/welcome/state.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  WelcomeController();
  final title = "Gotcha .";
  final state = WelcomeState();

  @override
  void onReady() {
    super.onReady();
    Future.delayed(
        Duration(seconds: 3), () => Get.offAllNamed(AppRoutes.Message));
  }
}
