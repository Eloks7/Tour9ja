import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCN3cNn_5OmeLlD1uthJTY2GV63cDsnCqQ",
            authDomain: "tour-9ja.firebaseapp.com",
            projectId: "tour-9ja",
            storageBucket: "tour-9ja.appspot.com",
            messagingSenderId: "17683619217",
            appId: "1:17683619217:web:d3629da30fbb56843b8e30"));
  } else {
    await Firebase.initializeApp();
  }
}
