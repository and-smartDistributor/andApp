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
    apiKey: 'AIzaSyB3j56gXvqCvZRqGWQZLL-3vl7F-jf9PbI',
    appId: '1:1023345338774:web:17074335a43e3017d415b7',
    messagingSenderId: '1023345338774',
    projectId: 'bucketlist-98e27',
    authDomain: 'bucketlist-98e27.firebaseapp.com',
    storageBucket: 'bucketlist-98e27.appspot.com',
    measurementId: 'G-1QETWB2NT2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC69_q85Byas97tNyYl64isEftk0-etkfw',
    appId: '1:1023345338774:android:6e09b77e29c8b173d415b7',
    messagingSenderId: '1023345338774',
    projectId: 'bucketlist-98e27',
    storageBucket: 'bucketlist-98e27.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCKkO6vpT7TVP48Rla0hpU01oSWJmtdYYA',
    appId: '1:1023345338774:ios:7057154462d45725d415b7',
    messagingSenderId: '1023345338774',
    projectId: 'bucketlist-98e27',
    storageBucket: 'bucketlist-98e27.appspot.com',
    iosClientId: '1023345338774-tovj7in50jhohe91atjgsfhtr73g0k3l.apps.googleusercontent.com',
    iosBundleId: 'com.example.bucketListWithFirebase2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCKkO6vpT7TVP48Rla0hpU01oSWJmtdYYA',
    appId: '1:1023345338774:ios:2122cb125c32ee34d415b7',
    messagingSenderId: '1023345338774',
    projectId: 'bucketlist-98e27',
    storageBucket: 'bucketlist-98e27.appspot.com',
    iosClientId: '1023345338774-drrrflao3omd9i0rk5ab5qiho9hjkunl.apps.googleusercontent.com',
    iosBundleId: 'com.example.bucketListWithFirebase2.RunnerTests',
  );
}
