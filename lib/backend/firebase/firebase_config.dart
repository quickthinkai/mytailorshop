import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC_V5cgZcVaNyTgGRtC5pui5sZk4_GJDD4",
            authDomain: "tailorshop-93609.firebaseapp.com",
            projectId: "tailorshop-93609",
            storageBucket: "tailorshop-93609.appspot.com",
            messagingSenderId: "50622294642",
            appId: "1:50622294642:web:febccb4801af5ed94a70eb",
            measurementId: "G-HRQQPKNHXZ"));
  } else {
    await Firebase.initializeApp();
  }
}
