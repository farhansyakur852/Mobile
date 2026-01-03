import 'package:flutter/material.dart';
import 'package:project/screens/splash_screen.dart';
import 'package:project/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash to Welcome',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: NAV_KEY,
      initialRoute: '/',
      onGenerateRoute: generateRoute,
      home: const SplashScreen(),
    );
  }
}
