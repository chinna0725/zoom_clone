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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDLt2qBRa4-C6iEWwXUHuOkOMuHqLQYXP8',
    appId: '1:923701687649:android:a92530766318c7586a4120',
    messagingSenderId: '923701687649',
    projectId: 'zoom-clone-fcba6',
    storageBucket: 'zoom-clone-fcba6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyADjtOzfAlZKl01xadQd1HKzUgM_M-foUQ',
    appId: '1:923701687649:ios:9edf36f5e4e5d1406a4120',
    messagingSenderId: '923701687649',
    projectId: 'zoom-clone-fcba6',
    storageBucket: 'zoom-clone-fcba6.appspot.com',
    androidClientId: '923701687649-uh2c68mr8ogdln7qe2pvm79t3up8c7h1.apps.googleusercontent.com',
    iosClientId: '923701687649-ku109oppscso4bq7144bs9hp8dv5s4ea.apps.googleusercontent.com',
    iosBundleId: 'com.example.zoomClone',
  );

}