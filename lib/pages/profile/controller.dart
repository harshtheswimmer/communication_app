import 'package:communications/common/routes/routes.dart';
import 'package:communications/pages/frame/welcome/state.dart';
import 'package:communications/pages/profile/state.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../common/store/user.dart';

class ProfileController extends GetxController {
  ProfileController();
  final state = ProfileState();

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> goLogout() async {
    await GoogleSignIn().signOut();
    await UserStore.to.onLogout();
  }
}
