import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAKomY7MgTVUy_Q7uCk5gKojzUDA4cSdxs",
            authDomain: "to-do-nxkq7k.firebaseapp.com",
            projectId: "to-do-nxkq7k",
            storageBucket: "to-do-nxkq7k.firebasestorage.app",
            messagingSenderId: "641440655410",
            appId: "1:641440655410:web:be9dd0d452305bf792b42b"));
  } else {
    await Firebase.initializeApp();
  }
}
