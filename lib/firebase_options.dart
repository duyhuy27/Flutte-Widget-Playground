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
    apiKey: 'AIzaSyA5WjKe6-N5i46h960hL42NwLxMTl0n1OQ',
    appId: '1:198382239217:web:3a2c7906dadb2e1c3b9850',
    messagingSenderId: '198382239217',
    projectId: 'day30s',
    authDomain: 'day30s.firebaseapp.com',
    storageBucket: 'day30s.appspot.com',
    measurementId: 'G-XPBG2MSMS8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDmZnjQlfymxhAhxaf8Xtg4QNlW6WI5aeI',
    appId: '1:198382239217:android:a803bae5868f14763b9850',
    messagingSenderId: '198382239217',
    projectId: 'day30s',
    storageBucket: 'day30s.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAwjatIbK5K10b9wXNNggryG60QgfXlAJE',
    appId: '1:198382239217:ios:e27efe07be4b6f6b3b9850',
    messagingSenderId: '198382239217',
    projectId: 'day30s',
    storageBucket: 'day30s.appspot.com',
    iosBundleId: 'com.example.basicWidget301',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAwjatIbK5K10b9wXNNggryG60QgfXlAJE',
    appId: '1:198382239217:ios:1847e10a6a9ff7503b9850',
    messagingSenderId: '198382239217',
    projectId: 'day30s',
    storageBucket: 'day30s.appspot.com',
    iosBundleId: 'com.example.basicWidget301.RunnerTests',
  );
}
