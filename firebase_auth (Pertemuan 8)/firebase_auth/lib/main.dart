import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/ui/splash.dart';
import 'package:firebase_auth/utils/routes.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Praktikum 6",
      debugShowCheckedModeBanner: false,
      navigatorKey: NAV_KEY,
      onGenerateRoute: generateRoute,
      home: SplashScreen(),
    );
  }
}
