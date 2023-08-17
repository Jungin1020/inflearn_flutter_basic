import 'package:firebase_auth/firebase_auth.dart';

class HomeModel {
  String getEmail() {
    return FirebaseAuth.instance.currentUser?.email ?? 'No email';
  }

  String getNickName() {
    return FirebaseAuth.instance.currentUser?.displayName ?? 'No nickname';
  }

  String getProfileImageUrl() {
    return FirebaseAuth.instance.currentUser?.photoURL ?? '';
  }
}
