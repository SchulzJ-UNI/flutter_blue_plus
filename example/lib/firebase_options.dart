// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA_q5kMCmS0u5DAOTTcMHLZHlc1ClLkf-k',
    appId: '1:972021808458:android:c7553841576f73c11b95b3',
    messagingSenderId: '972021808458',
    projectId: 'groundpasser',
    storageBucket: 'groundpasser.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAY4xesr3Wx-R5Zzj4IlJd60kJq5insYyQ',
    appId: '1:972021808458:ios:86fa933ab780a8141b95b3',
    messagingSenderId: '972021808458',
    projectId: 'groundpasser',
    storageBucket: 'groundpasser.appspot.com',
    iosClientId: '972021808458-o4no8spuan1fd5aghn4f0p1b2l9mt57j.apps.googleusercontent.com',
    iosBundleId: 'groundpasser.app',
  );
}
