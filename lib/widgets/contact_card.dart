import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key, required this.title, required this.icon});

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return Card(
      color: theme.cardColor,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.01, horizontal: size.width * 0.01),
        child: Row(
          children: [
            /// Empty Space
            SizedBox(
              width: size.width * 0.01,
            ),

            /// Icon
            Lottie.asset(
              icon,
              height: 50,
            ),

            /// Empty Space
            SizedBox(
              width: size.width * 0.04,
            ),

            /// title
            Text(
              title,
              style: theme.textTheme.bodyMedium,
              textScaler: TextScaler.noScaling,
            ),
          ],
        ),
      ),
    );
  }
}
