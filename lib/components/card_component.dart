import 'dart:ui';
import 'package:debt_pay_off/constants/text_style_constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget frostedCardHomeScreen(BuildContext context) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 7,
            sigmaY: 7,
          ),
          child: Container(),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
              ),
            ],
            border: Border.all(
              color: Colors.white,
            ),
            gradient: const LinearGradient(
              colors: [
                Color(0xffdcd8d0),
                Color(0xffdcd8d0),
                Color(0xffdcd8d0),
                Color(0xfff4ad78),
                Color(0xffbcbbe7),
                Color(0xffea8ba3),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Welcome, Aaron',
                      style: headerText,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/profile_images.jpeg',
                        fit: BoxFit.cover,
                        height: 50,
                      ),
                    ),
                  ],
                ),
                Text(
                  'First Payment is coming',
                  style: subheaderText.copyWith(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Remaining amount',
                  style: subheaderText.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$16,484.50',
                      style: headerText.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Icon(
                      Icons.more_vert,
                      color: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '48',
                          style: headerText.copyWith(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black38,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Payments left.Next payment',
                              style: subheaderText.copyWith(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'September 10, 2023',
                              style: subheaderText.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.send,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget frostedCardWalletScreen(BuildContext context) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 7,
            sigmaY: 7,
          ),
          child: Container(),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
              ),
            ],
            border: Border.all(
              color: Colors.white.withOpacity(0.2),
              width: 1.0,
            ),
            gradient: const LinearGradient(
              colors: [
                Color(0xffdcd8d0),
                Color(0xffdcd8d0),
                Color(0xffdcd8d0),
                Color(0xfff4ad78),
                Color(0xffbcbbe7),
                Color(0xffea8ba3),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'VISA',
                      style: cardheaderText,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          const Icon(
                            FontAwesomeIcons.ccDinersClub,
                          ),
                          // const SizedBox(
                          //   height: 15,
                          // ),
                          Text(
                            'CNB Bank',
                            style: cardNameText,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '7857  1221  1254  2584',
                  style: cardNumberText,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Aron Sham',
                  style: headerText.copyWith(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Valid\nthru :',
                      style: cardNumberText.copyWith(
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '04/26',
                      style: headerText.copyWith(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
