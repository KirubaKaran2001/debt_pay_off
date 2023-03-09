import 'package:debt_pay_off/components/container_components.dart';
import 'package:debt_pay_off/constants/text_style_constant.dart';
import 'package:debt_pay_off/components/card_component.dart';
import 'package:debt_pay_off/screen/main_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const pageRoute = '/homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    debugPrint('${MediaQuery.of(context).size.width}');
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                frostedCardHomeScreen(context),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Complete a Task',
                    style: subtitleText.copyWith(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ContainerWidget(
                  title: 'Refer a friend',
                  subTitle: 'Get a \$50 off your next payment.',
                  widgets: Icon(Icons.messenger_outline_rounded),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ContainerWidget(
                  title: 'Checking account',
                  subTitle: 'open your freen checking account.',
                  widgets: Icon(Icons.wallet),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ContainerWidget(
                  title: 'Monitor your credit',
                  subTitle: 'free credit tracking for your score.',
                  widgets: Icon(Icons.credit_score_sharp),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ContainerWidget(
                  title: 'Pay your bills',
                  subTitle: 'Get a upto \$5 cashback.',
                  widgets: Icon(Icons.paypal_sharp),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
