import 'package:flutter/material.dart';
import 'package:my_app/pages/initial_page.dart';
import 'package:my_app/pages/login_page.dart';
import 'package:my_app/pages/my_home_page.dart';
import 'package:my_app/pages/playing_page.dart';
import 'package:my_app/pages/playlist_page.dart';

const String routeHome = '/home';
const String routeLogin = '/login';
const String routerPlaylist = '/playlist';
const String routePlaying = '/playing';
const String routeInitial = '/initial';



class MyRouters {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case '/playlist':
        return MaterialPageRoute(builder: (_) => const PlayingPage());
      case '/playing':
        return MaterialPageRoute(builder: (_) => const PlayListPage());
        case '/initial':
        return MaterialPageRoute(builder: (_) => const InitialPage());

      default:
        return MaterialPageRoute(builder: (_) => const LoginPage());
    }
  }
}
