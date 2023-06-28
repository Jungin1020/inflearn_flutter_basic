import 'package:firebase_auth/firebase_auth.dart';

class AccountModel {
  void logout() async {
    await FirebaseAuth.instance.signOut();
  }

  String getNickName() {
    return FirebaseAuth.instance.currentUser?.displayName ?? 'No nickname';
  }

  String getProfileImageUrl() {
    return FirebaseAuth.instance.currentUser?.photoURL ?? '';
  }
}
