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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAXEpFq6x8tT6vStJs498tE6kGfZSydrns',
    appId: '1:920932779651:web:6f69298e48f70ca9fc7db6',
    messagingSenderId: '920932779651',
    projectId: 'testinga-ee291',
    authDomain: 'testinga-ee291.firebaseapp.com',
    storageBucket: 'testinga-ee291.appspot.com',
    measurementId: 'G-P6KZPPQD0P',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD0mMP219Wc1dZigdIxuFYPWmWhZhB4HyQ',
    appId: '1:920932779651:ios:d52cd06011245996fc7db6',
    messagingSenderId: '920932779651',
    projectId: 'testinga-ee291',
    storageBucket: 'testinga-ee291.appspot.com',
    androidClientId: '920932779651-cs8h8ob4phq8hqld9vachq9fq9ga3kbo.apps.googleusercontent.com',
    iosClientId: '920932779651-1qa8v02qi2899soo7voht0p6376bmqsg.apps.googleusercontent.com',
    iosBundleId: 'com.example.eCommerceAdmin',
  );
}
