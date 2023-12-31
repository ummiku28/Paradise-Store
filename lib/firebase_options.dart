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
    apiKey: 'AIzaSyA5Dg7_12vDOx8afhc4QiYAH9b4ooGCf38',
    appId: '1:512624289403:web:f7bdd9930b6a2c8afce4de',
    messagingSenderId: '512624289403',
    projectId: 'shopapp-f3067',
    authDomain: 'shopapp-f3067.firebaseapp.com',
    databaseURL: 'https://shopapp-f3067-default-rtdb.firebaseio.com',
    storageBucket: 'shopapp-f3067.appspot.com',
    measurementId: 'G-Z7DNLQ0P0W',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBOCfLvDnk-6rpG8soAuDYeDGwUR1nbvQk',
    appId: '1:512624289403:android:685374e1ac42a733fce4de',
    messagingSenderId: '512624289403',
    projectId: 'shopapp-f3067',
    databaseURL: 'https://shopapp-f3067-default-rtdb.firebaseio.com',
    storageBucket: 'shopapp-f3067.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCU7XrfkvCZxzGIRp6KTW4eZZzmJP2jOYk',
    appId: '1:512624289403:ios:1286402b3dad87cbfce4de',
    messagingSenderId: '512624289403',
    projectId: 'shopapp-f3067',
    databaseURL: 'https://shopapp-f3067-default-rtdb.firebaseio.com',
    storageBucket: 'shopapp-f3067.appspot.com',
    iosBundleId: 'com.example.store',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCU7XrfkvCZxzGIRp6KTW4eZZzmJP2jOYk',
    appId: '1:512624289403:ios:2eede191e3bd27bafce4de',
    messagingSenderId: '512624289403',
    projectId: 'shopapp-f3067',
    databaseURL: 'https://shopapp-f3067-default-rtdb.firebaseio.com',
    storageBucket: 'shopapp-f3067.appspot.com',
    iosBundleId: 'com.example.store.RunnerTests',
  );
}
