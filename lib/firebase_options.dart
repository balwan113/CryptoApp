// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCQfuYYfugsNlU4r8Bey87JhVixTSavA20',
    appId: '1:551367168294:web:4d1a2340e0aedae16cb1e7',
    messagingSenderId: '551367168294',
    projectId: 'crypto-list-app228',
    authDomain: 'crypto-list-app228.firebaseapp.com',
    storageBucket: 'crypto-list-app228.firebasestorage.app',
    measurementId: 'G-WKMZ7YKY9Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHxpM2TMriJghpp45mYi4sYKjo_597xJ4',
    appId: '1:551367168294:android:a65a73bcf02c20566cb1e7',
    messagingSenderId: '551367168294',
    projectId: 'crypto-list-app228',
    storageBucket: 'crypto-list-app228.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC6J11yHPaG-KxJ-8sq_EX_4f0w9IY-TqY',
    appId: '1:551367168294:ios:6d6cf9f2f37b27cc6cb1e7',
    messagingSenderId: '551367168294',
    projectId: 'crypto-list-app228',
    storageBucket: 'crypto-list-app228.firebasestorage.app',
    iosBundleId: 'com.example.mypetproject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC6J11yHPaG-KxJ-8sq_EX_4f0w9IY-TqY',
    appId: '1:551367168294:ios:6d6cf9f2f37b27cc6cb1e7',
    messagingSenderId: '551367168294',
    projectId: 'crypto-list-app228',
    storageBucket: 'crypto-list-app228.firebasestorage.app',
    iosBundleId: 'com.example.mypetproject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCQfuYYfugsNlU4r8Bey87JhVixTSavA20',
    appId: '1:551367168294:web:33a334d32204c49c6cb1e7',
    messagingSenderId: '551367168294',
    projectId: 'crypto-list-app228',
    authDomain: 'crypto-list-app228.firebaseapp.com',
    storageBucket: 'crypto-list-app228.firebasestorage.app',
    measurementId: 'G-PBGD6DJWVN',
  );
}
