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
    apiKey: 'AIzaSyD9c1Lp2f9pBJyqzirmRgJ7M-AZD9n3U24',
    appId: '1:383628660484:web:86eeca68ceeb986178ca51',
    messagingSenderId: '383628660484',
    projectId: 'neon-auth-3b653',
    authDomain: 'neon-auth-3b653.firebaseapp.com',
    storageBucket: 'neon-auth-3b653.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBpv_4LET5WKywtz9bKrtPtHyIjZxnj0sY',
    appId: '1:383628660484:android:505d22d811613fc578ca51',
    messagingSenderId: '383628660484',
    projectId: 'neon-auth-3b653',
    storageBucket: 'neon-auth-3b653.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC6w2l4Mw8ZYcFRKGvd2ipiDUxOMWkGrIs',
    appId: '1:383628660484:ios:e20ba5b7f850b83b78ca51',
    messagingSenderId: '383628660484',
    projectId: 'neon-auth-3b653',
    storageBucket: 'neon-auth-3b653.firebasestorage.app',
    iosBundleId: 'com.example.untitled8',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC6w2l4Mw8ZYcFRKGvd2ipiDUxOMWkGrIs',
    appId: '1:383628660484:ios:e20ba5b7f850b83b78ca51',
    messagingSenderId: '383628660484',
    projectId: 'neon-auth-3b653',
    storageBucket: 'neon-auth-3b653.firebasestorage.app',
    iosBundleId: 'com.example.untitled8',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD9c1Lp2f9pBJyqzirmRgJ7M-AZD9n3U24',
    appId: '1:383628660484:web:994b4085191285dd78ca51',
    messagingSenderId: '383628660484',
    projectId: 'neon-auth-3b653',
    authDomain: 'neon-auth-3b653.firebaseapp.com',
    storageBucket: 'neon-auth-3b653.firebasestorage.app',
  );
}