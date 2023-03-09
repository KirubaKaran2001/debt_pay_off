import 'package:debt_pay_off/constants/text_style_constant.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final Widget? widgets;

  const ContainerWidget({
    required this.title,
    required this.subTitle,
    required this.widgets,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff27292d),
        ),
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff27292d),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xff56575d),
                ),
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff56575d),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: widgets!,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: subtitleText.copyWith(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Text(
                  subTitle!,
                  style: subtitleText.copyWith(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final IconData? icon;
  const ProfileWidget({
    required this.title,
    required this.subTitle,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff27292d),
        ),
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff27292d),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                      style: subtitleText.copyWith(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      subTitle!,
                      style: subtitleText.copyWith(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(Icons.arrow_forward_ios_outlined)
          ],
        ),
      ),
    );
  }
}
