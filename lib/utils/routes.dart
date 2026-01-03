// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:project/screens/daftarscreen.dart";
import "package:project/screens/halamanpengelola.dart";
import "package:project/screens/halamanpenggunascreen.dart";
import "package:project/screens/loginpengelola.dart";
import "package:project/screens/loginpenggunascreen.dart";
// import 'package:flutter/widgets.dart';
import "package:project/screens/welcome_screen.dart";
import "package:project/main.dart";
MaterialPageRoute _pageRoute (
  {required Widget body, required RouteSettings settings}) => 
  MaterialPageRoute(builder: (_) => body, settings: settings);

Route<dynamic>? generateRoute (RouteSettings settings) {
  Route? _route;
  final _args = settings.arguments;
  switch (settings.name) {
    case rWelcome:
    _route = _pageRoute(body: WelcomeScreen(), settings: settings);
    break;
    case rLogin:
    _route = _pageRoute(body: const LoginPenggunaScreen(), settings: settings);
    break;
    case rDaftar:
    _route = _pageRoute(body: const LoginDaftarScreen(), settings: settings);
    break;
    case rLoginPengelola:
    _route = _pageRoute(body: LoginPengelolaScreen(), settings: settings);
    break;
    case rHalamanPengguna:
    _route = _pageRoute(body: Halamanpenggunascreen(), settings: settings);
    break;
    case rHalamanAdmin:
    _route = _pageRoute(body: HalamanPengelolaScreen(), settings: settings);
    default:
      _route = _pageRoute(
          body: Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
          settings: settings);
      break;
  }
  return _route;
}

final NAV_KEY = GlobalKey<NavigatorState>();
const String rWelcome = '/welcome';
const String rLogin = '/login';
const String rDaftar = '/daftar';
const String rLoginPengelola = '/LoginPengelola';
const String rHalamanPengguna ='/halamanpengguna';
const String rHalamanAdmin ='/halamanpengelola';