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
    apiKey: 'AIzaSyCxBfaYwGPXF-ah2lmuHOz-ugrO5OQD-Lo',
    appId: '1:1029410932161:web:94b82f43d37619d62b9b40',
    messagingSenderId: '1029410932161',
    projectId: 'expense-tracker-c0e67',
    authDomain: 'expense-tracker-c0e67.firebaseapp.com',
    storageBucket: 'expense-tracker-c0e67.appspot.com',
    measurementId: 'G-CCWR8SGHH1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD2oRpUaQqta_ubYJ7tFt4Rk4gBt1nBRhg',
    appId: '1:1029410932161:android:315dd4ffd2ae9c862b9b40',
    messagingSenderId: '1029410932161',
    projectId: 'expense-tracker-c0e67',
    storageBucket: 'expense-tracker-c0e67.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyABChfU7IxKW-tT5QJ_EwFC1FUJo_YB7HM',
    appId: '1:1029410932161:ios:fbf18b68af82cd062b9b40',
    messagingSenderId: '1029410932161',
    projectId: 'expense-tracker-c0e67',
    storageBucket: 'expense-tracker-c0e67.appspot.com',
    iosBundleId: 'com.example.expenses',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyABChfU7IxKW-tT5QJ_EwFC1FUJo_YB7HM',
    appId: '1:1029410932161:ios:fbf18b68af82cd062b9b40',
    messagingSenderId: '1029410932161',
    projectId: 'expense-tracker-c0e67',
    storageBucket: 'expense-tracker-c0e67.appspot.com',
    iosBundleId: 'com.example.expenses',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCxBfaYwGPXF-ah2lmuHOz-ugrO5OQD-Lo',
    appId: '1:1029410932161:web:6491227f95d516742b9b40',
    messagingSenderId: '1029410932161',
    projectId: 'expense-tracker-c0e67',
    authDomain: 'expense-tracker-c0e67.firebaseapp.com',
    storageBucket: 'expense-tracker-c0e67.appspot.com',
    measurementId: 'G-904E5QN45G',
  );
}
