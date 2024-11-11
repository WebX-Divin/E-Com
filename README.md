# Firebase Setup Guide for Flutter

Follow these steps to integrate Firebase with your Flutter project.

> **Note**: Create a new Firebase project, copy the `Application ID` from the app-level `build.gradle` file, and use it in your Firebase configuration. After downloading the `google-services.json` file, move it to the `android/app/` folder.

## Step 1: Configure Firebase in `main.dart`

Add the following code to initialize Firebase in your `main.dart` file:

```dart
import 'package:firebase_core/firebase_core.dart';
import 'dart:io';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
    options: Platform.isAndroid
      ? const FirebaseOptions(
          apiKey: 'YOUR_API_KEY',
          appId: 'YOUR_APP_ID',
          messagingSenderId: 'YOUR_MESSAGING_SENDER_ID',
          projectId: 'YOUR_PROJECT_ID',
        )
      : null,
  );

  runApp(MyApp());
}
```

> Replace `'YOUR_API_KEY'`, `'YOUR_APP_ID'`, `'YOUR_MESSAGING_SENDER_ID'`, and `'YOUR_PROJECT_ID'` with the values from your Firebase project settings.

## Step 2: Add Firebase Plugin to Project-Level `build.gradle`

Add the Firebase plugin to the top of your project-level `build.gradle` file:

```groovy
plugins {
    id 'com.google.gms.google-services' version '4.4.2' apply false
}
```

## Step 3: Add Firebase Plugin and Dependencies to App-Level `build.gradle`

In your app-level `build.gradle` file, add the Firebase plugin inside the `plugins` block. Also, add the Firebase BoM (Bill of Materials) dependency at the bottom of the `dependencies` section:

```groovy
plugins {
    id 'com.google.gms.google-services'
}

dependencies {
    // Import the Firebase BoM
    implementation platform('com.google.firebase:firebase-bom:33.5.1')
    
    // Add other Firebase dependencies as needed, for example:
    // implementation 'com.google.firebase:firebase-analytics'
}
```

> **Note**: The Firebase BoM ensures that all Firebase libraries used in your app are compatible with each other.
