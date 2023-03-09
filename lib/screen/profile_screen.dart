import 'dart:ffi';

import 'package:debt_pay_off/components/container_components.dart';
import 'package:debt_pay_off/constants/text_style_constant.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  static const pageRoute = '/profileScreen';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white24.withOpacity(0.5),
          title: Text(
            'Profile ',
            style: cardNumberText.copyWith(
              fontSize: 20,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(
            20,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  maxRadius: 70,
                  backgroundImage: AssetImage(
                    'assets/profile_images.jpeg',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Micheal jonathan',
                  style: cardheaderText,
                ),
                const SizedBox(
                  height: 50,
                ),
                const ProfileWidget(
                  title: 'Change Name',
                  subTitle: 'you can change name and surname',
                  icon: Icons.abc,
                ),
                const SizedBox(
                  height: 10,
                ),
                const ProfileWidget(
                  title: 'Change Password',
                  subTitle: 'change your password easily',
                  icon: Icons.password,
                ),
                const SizedBox(
                  height: 10,
                ),
                const ProfileWidget(
                  title: 'Change Email',
                  subTitle: 'you can change your email',
                  icon: Icons.email,
                ),
                const SizedBox(
                  height: 10,
                ),
                const ProfileWidget(
                  title: 'Change Mobile Number',
                  subTitle: 'change your mobile number',
                  icon: Icons.numbers,
                ),
                const SizedBox(
                  height: 10,
                ),
                const ProfileWidget(
                  title: 'Change Date of Birth',
                  subTitle: 'change your date of birth',
                  icon: Icons.calendar_month,
                ),
                const SizedBox(
                  height: 10,
                ),
                const ProfileWidget(
                  title: 'change language',
                  subTitle: 'Change Your language here',
                  icon: Icons.language,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
