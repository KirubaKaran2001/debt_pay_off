import 'package:debt_pay_off/constants/theme_constants.dart';
import 'package:debt_pay_off/screen/home_screen.dart';
import 'package:debt_pay_off/screen/main_screen.dart';
import 'package:debt_pay_off/screen/profile_screen.dart';
import 'package:debt_pay_off/screen/wallet_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myDarkTheme,
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings settings) {
        debugPrint('build route for ${settings.name}');
        var routes = <String, WidgetBuilder>{
          HomeScreen.pageRoute: (BuildContext context) => const HomeScreen(),
          WalletScreen.pageRoute: (BuildContext context) =>
              const WalletScreen(),
          ProfileScreen.pageRoute: (BuildContext context) =>
              const ProfileScreen(),
        };
        WidgetBuilder builder = routes[settings.name]!;
        return MaterialPageRoute(
          builder: (ctx) => builder(ctx),
        );
      },
    );
  }
}
