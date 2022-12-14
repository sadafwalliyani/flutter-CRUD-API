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
    apiKey: 'AIzaSyAt0-kqVSI5RCeIjsFkoHdCG_QfiehRJ4g',
    appId: '1:418644416809:web:9cd760ecbf55512621ff38',
    messagingSenderId: '418644416809',
    projectId: 'hack17thjuly',
    authDomain: 'hack17thjuly.firebaseapp.com',
    storageBucket: 'hack17thjuly.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCN7yygjLYXHzRA7QgJ23wXPQ7Spi1PunU',
    appId: '1:418644416809:android:202b65faa07f8f1621ff38',
    messagingSenderId: '418644416809',
    projectId: 'hack17thjuly',
    storageBucket: 'hack17thjuly.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBWT8wP_Siw5wopoW0BFDDf8ZpQ4ZB2hcs',
    appId: '1:418644416809:ios:0789da963783855821ff38',
    messagingSenderId: '418644416809',
    projectId: 'hack17thjuly',
    storageBucket: 'hack17thjuly.appspot.com',
    androidClientId: '418644416809-nub4f9lq78aoer3qipng73n5gi083jmh.apps.googleusercontent.com',
    iosClientId: '418644416809-rm278k5npq3qille6hf03v7834ja6d9d.apps.googleusercontent.com',
    iosBundleId: 'com.example.practiceoftest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBWT8wP_Siw5wopoW0BFDDf8ZpQ4ZB2hcs',
    appId: '1:418644416809:ios:0789da963783855821ff38',
    messagingSenderId: '418644416809',
    projectId: 'hack17thjuly',
    storageBucket: 'hack17thjuly.appspot.com',
    androidClientId: '418644416809-nub4f9lq78aoer3qipng73n5gi083jmh.apps.googleusercontent.com',
    iosClientId: '418644416809-rm278k5npq3qille6hf03v7834ja6d9d.apps.googleusercontent.com',
    iosBundleId: 'com.example.practiceoftest',
  );
}
