import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA0tfEu1oB1MRxC4CjvHGwDbKZ5sRR58bg",
            authDomain: "sender-ca184.firebaseapp.com",
            projectId: "sender-ca184",
            storageBucket: "sender-ca184.appspot.com",
            messagingSenderId: "680706742484",
            appId: "1:680706742484:web:1145a49b1264c1ff2dc341",
            measurementId: "G-4PZ4ZP32YH"));
  } else {
    await Firebase.initializeApp();
  }
}
