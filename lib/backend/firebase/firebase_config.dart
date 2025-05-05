import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCpe0nVXy3cw2UGcTSeQz5BwMBhfxug0v4",
            authDomain: "lubricentro-montecillos.firebaseapp.com",
            projectId: "lubricentro-montecillos",
            storageBucket: "lubricentro-montecillos.firebasestorage.app",
            messagingSenderId: "858290000176",
            appId: "1:858290000176:web:69b4a5ee05ec41a40178f5",
            measurementId: "G-PVLCREWHX8"));
  } else {
    await Firebase.initializeApp();
  }
}
