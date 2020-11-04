import 'package:app/screens/login_page.dart';
import 'package:app/screens/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          var currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus.unfocus();
          }
        },
        child: MaterialApp(
          title: '',
          builder: (context, child) {
            return ScrollConfiguration(behavior: NoScrollHighlightBehavior(), child: child);
          },
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: FutureBuilder(
            future: _initialization,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return SplashPage();
              }
              if (snapshot.connectionState == ConnectionState.done) {
                return LoginPage();
              }
              return SplashPage();
            },
          ),
        ));
  }
}

class NoScrollHighlightBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(one, child, two) => child;
}
