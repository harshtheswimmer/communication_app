import 'package:communications/common/entities/entities.dart';
import 'package:communications/common/routes/names.dart';
import 'package:communications/pages/frame/message/state.dart';
import 'package:communications/pages/frame/sign_in/state.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInController extends GetxController {
  SignInController();
  final state = SignInState();

  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['openid']);

  void handleSignIn(String type) async {
    //1. email, 2. google, 3. facebook, 4. phone
    try {
      if (type == "google") {
        print("you are logging in with google");

        var user = await _googleSignIn.signIn();
        print(user.toString());
        if (user != null) {
          String? displayName = user.displayName;
          String email = user.email;
          String id = user.id;
          String photourl = user.photoUrl ?? 'assets/images/profile.png';
          LoginRequestEntity loginPanelListRequestEntity = LoginRequestEntity();
          loginPanelListRequestEntity.avatar = photourl;
          loginPanelListRequestEntity.name = displayName;
          loginPanelListRequestEntity.email = email;
          loginPanelListRequestEntity.open_id = id;
          loginPanelListRequestEntity.type = 2;
          asyncPostAllData();
        }
      } else if (type == "facebook") {
        print("you are logging in with facebook");
      } else if (type == "") {
        print("you are logging in with phone number");
      }
    } catch (e) {
      if (kDebugMode) {
        print('...error with login $e');
      }
    }
  }

  asyncPostAllData() {
    print("Going to message page");
    Get.offAllNamed(AppRoutes.Message);
  }
}
