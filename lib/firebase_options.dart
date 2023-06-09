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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAbZa8R28uYVpyyX7K1zMTR2FyLdot9O4E',
    appId: '1:984139365184:web:b247bc671b14d2230698a5',
    messagingSenderId: '984139365184',
    projectId: 'notes-app-a2159',
    authDomain: 'notes-app-a2159.firebaseapp.com',
    storageBucket: 'notes-app-a2159.appspot.com',
    measurementId: 'G-6BLPTV2MFJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCZAQtwCu8udZVacSGmyDEF7-kbQ6NI6Qg',
    appId: '1:984139365184:android:00b22f3e79890e3e0698a5',
    messagingSenderId: '984139365184',
    projectId: 'notes-app-a2159',
    storageBucket: 'notes-app-a2159.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCEL3sv3vJXiu9Trr1uSzTRRuiJzEKSBGs',
    appId: '1:984139365184:ios:8d0866677c33f78c0698a5',
    messagingSenderId: '984139365184',
    projectId: 'notes-app-a2159',
    storageBucket: 'notes-app-a2159.appspot.com',
    iosClientId: '984139365184-ufg4fitaieacsebetd5ve2t58qp43dbs.apps.googleusercontent.com',
    iosBundleId: 'com.example.helloWorld',
  );
}
