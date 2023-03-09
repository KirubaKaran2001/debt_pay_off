import 'package:debt_pay_off/screen/home_screen.dart';
import 'package:debt_pay_off/screen/profile_screen.dart';
import 'package:debt_pay_off/screen/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomeScreen(),
    WalletScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Center(
              child: _pages.elementAt(_selectedIndex),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white10.withOpacity(0.4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.house,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          _selectedIndex = 0;

                          onItemTapped(_selectedIndex);
                        },
                      ),
                      IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.wallet,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          _selectedIndex = 1;
                          onItemTapped(_selectedIndex);
                        },
                      ),
                      IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.user,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          _selectedIndex = 2;
                          onItemTapped(_selectedIndex);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
