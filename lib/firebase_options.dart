// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA7ZX02iujY9EYOs3TKjf9XkN6pqFcJG98',
    appId: '1:96927771128:web:9fee0a854a819883374e0d',
    messagingSenderId: '96927771128',
    projectId: 'smartkit-c9176',
    authDomain: 'smartkit-c9176.firebaseapp.com',
    storageBucket: 'smartkit-c9176.appspot.com',
    measurementId: 'G-2PDVD0RB11',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDRJuAsdrWzCXVpTKSwZdFJfwExEMOVhtM',
    appId: '1:96927771128:android:25ae0d74da473781374e0d',
    messagingSenderId: '96927771128',
    projectId: 'smartkit-c9176',
    storageBucket: 'smartkit-c9176.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAsbbCxl675msIyU4XC_jTl_02Xx4BDgu0',
    appId: '1:96927771128:ios:86c9ebb2d096317b374e0d',
    messagingSenderId: '96927771128',
    projectId: 'smartkit-c9176',
    storageBucket: 'smartkit-c9176.appspot.com',
    iosClientId: '96927771128-j48rh1r4r2lnagr5fm50rhv1gapgqkmr.apps.googleusercontent.com',
    iosBundleId: 'com.example.smartkit',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAsbbCxl675msIyU4XC_jTl_02Xx4BDgu0',
    appId: '1:96927771128:ios:86c9ebb2d096317b374e0d',
    messagingSenderId: '96927771128',
    projectId: 'smartkit-c9176',
    storageBucket: 'smartkit-c9176.appspot.com',
    iosClientId: '96927771128-j48rh1r4r2lnagr5fm50rhv1gapgqkmr.apps.googleusercontent.com',
    iosBundleId: 'com.example.smartkit',
  );
}
