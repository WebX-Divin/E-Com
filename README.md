# Follow the below steps, if you need to connect firebase

` Note: Create a new project on firebase. Copy the application id on build.gradle file on app level and use it in the firebase. After downloading the JSON, move it to the android/app/ folder. `

1.Add this code in main.dart file

```dart
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: '',
            appId: '',
            messagingSenderId: '',
            projectId: '',
          ),
        )
      : await Firebase.initializeApp();
```

2.Add this code on build.gradle file on project level at the top

```groovy
plugins {
  id 'com.google.gms.google-services' version '4.4.2' apply false
}
```

3.Add this code on build.gradle file on app level. Just copy the id from the plugin and paste inside the plugins block. Paste the dependency at the bottom of the file.

```groovy
plugins {
  id 'com.google.gms.google-services'
}

dependencies {
  // Import the Firebase BoM
  implementation platform('com.google.firebase:firebase-bom:33.5.1')
}
```
