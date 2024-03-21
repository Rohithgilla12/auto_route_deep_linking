# auto_route_deep_linking

Minimal reproducible example of my deep linking issue with `auto_route` Flutter library.

I basically put all the code into the `main.dart` file, then added a few dependencies in the `pubspec.yaml` file, and added deep linking in the `AndroidManifest.xml` file, and the `Infos.plist` file.

`adb shell am start -a android.intent.action.VIEW -c android.intent.category.BROWSABLE -d 'deeplinking://router/page2' com.example.auto_route_deep_linking` opens the app but doesn't redirects to page 2.

Same goes with `xcrun simctl openurl booted 'deeplinking://router/page2'`.

Hope this will help 🙂
