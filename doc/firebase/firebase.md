# Document: Firebase

[Back](../../README.md)

- [Document: Firebase](#document-firebase)
  - [Install the Firebase CLI](#install-the-firebase-cli)
  - [Log in and test the Firebase CLI](#log-in-and-test-the-firebase-cli)
  - [Add Firebase to Flutter app](#add-firebase-to-flutter-app)
  - [Authentication](#authentication)
  - [Package `flutter_widget_from_html`](#package-flutter_widget_from_html)
  - [Package `flutter_html 2.2.1`](#package-flutter_html-221)

---

## Install the Firebase CLI

- Ref:

  - https://firebase.google.com/docs/cli#windows-npm

- Using `npm`

```sh
# Install Firebase
npm install -g firebase-tools

# Verify the installation
firebase --version
```

---

## Log in and test the Firebase CLI

```sh
# Log into Firebase using Google account
firebase login

# Test that the CLI is properly installed and accessing your account by listing your Firebase projects
firebase projects:list

# Install the FlutterFire CLI
dart pub global activate flutterfire_cli

# make sure flutterfire is installed.
flutterfire --version
```

---

## Add Firebase to Flutter app

- Configure Flutter apps to use Firebase

```sh
# Select a Firebase project to configure, select flatforms
# Selected app will be created
flutterfire configure

# Initialize Firebase in your app
# install the core plugin
flutter pub add firebase_core
```

- In `lib/main.dart` file, import the Firebase core plugin

```dart
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// Rewrite the main
Future<void> main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
```

---

## Authentication

- Import Auth package

```sh
# Import Auth package
flutter pub add firebase_auth

# will add dependency into the yaml file:
# dependencies:
#   flutter:
#     sdk: flutter
#   firebase_auth: ^4.17.3
```

---

## Package `flutter_widget_from_html`

- Flutter package to render html as widgets that supports hyperlink, image, audio, video, iframe and 70+ other tags.

- Ref:
  - https://pub.dev/packages/flutter_widget_from_html
- https://www.dhiwise.com/post/flutter-widget-from-html-customization-unleashed

- Install

```sh
flutter pub add flutter_widget_from_html
# will add a line like this to your package's pubspec.yaml
# dependencies:
  # flutter_widget_from_html: ^0.14.11
```

- Import

```dart
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
```

---

## Package `flutter_html 2.2.1`

- Ref:

  - https://pub.dev/packages/flutter_html

- Install

```sh
flutter pub add flutter_html
# add a line like this to your package's pubspec.yaml
# dependencies:
#   flutter_html: ^2.2.1
```

- Import

```dart
import 'package:flutter_html/flutter_html.dart';
```

- Demo:

---

[TOP](#document-firebase)
