import 'dart:ui';

import 'package:debt_pay_off/components/container_components.dart';
import 'package:debt_pay_off/constants/text_style_constant.dart';
import 'package:debt_pay_off/components/card_component.dart';
import 'package:debt_pay_off/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  static const pageRoute = '/walletScreen';

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color(0xff27292d),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Wallet',
                              style: headerText.copyWith(
                                fontSize: 26,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Arrive by September 9th',
                              style: subheaderText.copyWith(
                                fontSize: 14,
                                color: const Color(0xff7b7d81),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        frostedCardWalletScreen(context),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        color: const Color(0xff27292d),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(
                                    Icons.wallet,
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'checking account',
                                style: subtitleText.copyWith(
                                  fontSize: 15,
                                  color: const Color(0xff848589),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '\$0.000.00',
                                style: subtitleText.copyWith(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        color: const Color(0xff27292d),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(
                                    Icons.credit_card_outlined,
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Escrow balance',
                                style: subtitleText.copyWith(
                                  fontSize: 15,
                                  color: const Color(0xff848589),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '\$560.80',
                                style: subtitleText.copyWith(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Linked accounts',
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
                  title: 'Varo money',
                  subTitle: 'Checking account--3942',
                  widgets: Text(
                    'Varo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ContainerWidget(
                  title: 'Pnc money',
                  subTitle: 'Checking account--1492',
                  widgets: Icon(
                    Icons.rocket_sharp,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ContainerWidget(
                  title: 'Cub money',
                  subTitle: 'Checking account--0322',
                  widgets: Icon(
                    Icons.curtains_closed,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
