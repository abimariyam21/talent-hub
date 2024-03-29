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
    apiKey: 'AIzaSyAHRT5cHfU4_dWfa09-tzw81H-Z1C3WKmA',
    appId: '1:1043725890221:web:2777923e5d6cc988f68c24',
    messagingSenderId: '1043725890221',
    projectId: 'talent-hub-ac344',
    authDomain: 'talent-hub-ac344.firebaseapp.com',
    storageBucket: 'talent-hub-ac344.appspot.com',
    measurementId: 'G-HN1NHYDKTF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBgtRW2GbNWTQh0QMasy2qZaRkYoRSr1e4',
    appId: '1:1043725890221:android:e876709aee2fac9ff68c24',
    messagingSenderId: '1043725890221',
    projectId: 'talent-hub-ac344',
    storageBucket: 'talent-hub-ac344.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-szmnOxro36IUlr50DbgedDvNCa12DvU',
    appId: '1:1043725890221:ios:5b6401fc8f8d4c69f68c24',
    messagingSenderId: '1043725890221',
    projectId: 'talent-hub-ac344',
    storageBucket: 'talent-hub-ac344.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA-szmnOxro36IUlr50DbgedDvNCa12DvU',
    appId: '1:1043725890221:ios:bb67c5ba04d666f9f68c24',
    messagingSenderId: '1043725890221',
    projectId: 'talent-hub-ac344',
    storageBucket: 'talent-hub-ac344.appspot.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}
