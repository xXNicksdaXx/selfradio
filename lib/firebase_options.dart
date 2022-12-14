// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.windows:
        return web;
      case TargetPlatform.linux:
        return web;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDIMUe6KyKys_QLicwULtjhpz8pDb_UyOQ',
    appId: '1:476949383674:web:fb659988d59e0584c07c43',
    messagingSenderId: '476949383674',
    projectId: 'selfradio-f2820',
    authDomain: 'selfradio-f2820.firebaseapp.com',
    databaseURL:
        'https://selfradio-f2820-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'selfradio-f2820.appspot.com',
    measurementId: 'G-CX003KVQW4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC9G9pWxHhfXnfYaRRY3z57WhxRHrRNadk',
    appId: '1:476949383674:android:b7efc83bbc7703c3c07c43',
    messagingSenderId: '476949383674',
    projectId: 'selfradio-f2820',
    databaseURL:
        'https://selfradio-f2820-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'selfradio-f2820.appspot.com',
  );
}
