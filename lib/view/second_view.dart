import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/dev_data.dart';
import 'package:flutter_application_1/utils/custom_str.dart';

class SecondView extends StatelessWidget {
  const SecondView({super.key, required this.nextPage, required this.backPage});

  final VoidCallback backPage;
  final VoidCallback nextPage;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Empty Space
            SizedBox(
              height: size.height * 0.02,
            ),

            /// Bio
            Container(
              margin: EdgeInsets.all(size.height * .01),
              padding: EdgeInsets.symmetric(
                horizontal: size.width * .03,
              ),
              width: size.width,
              decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.secondScreenBio,
                    style: theme.textTheme.bodyLarge,
                    textScaler: TextScaler.noScaling,
                  ),
                  Text(
                    DevData.devBio,
                    style: theme.textTheme.bodyMedium,
                    textScaler: TextScaler.noScaling,
                  ),
                ],
              ),
            ),

            /// Education
            Container(
              margin: EdgeInsets.all(size.height * .01),
              padding: EdgeInsets.symmetric(
                horizontal: size.width * .03,
              ),
              width: size.width,
              decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.secondScreenEducation,
                    style: theme.textTheme.bodyLarge,
                    textScaler: TextScaler.noScaling,
                  ),
                  Text(
                    DevData.devEducation,
                    style: theme.textTheme.bodyMedium,
                    textScaler: TextScaler.noScaling,
                  ),
                ],
              ),
            ),

            /// Skills
            Container(
              margin: EdgeInsets.all(size.height * .01),
              padding: EdgeInsets.symmetric(
                horizontal: size.width * .03,
                vertical: size.height * .01,
              ),
              width: size.width,
              decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.secondScreenSkills,
                    style: theme.textTheme.bodyLarge,
                    textScaler: TextScaler.noScaling,
                  ),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  SizedBox(
                    width: size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        DevData.devData.skills.length,
                        (index) => Text(
                          "${index + 1}. ${DevData.devData.skills[index]}",
                          style: theme.textTheme.bodyMedium,
                          textScaler: TextScaler.noScaling,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// Empty Space
            Expanded(child: Container()),

            /// Next Page
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  color: theme.canvasColor,
                  onPressed: backPage,
                  icon: const Icon(
                    Icons.arrow_upward_outlined,
                    size: 30,
                  ),
                ),
                IconButton(
                  color: theme.canvasColor,
                  onPressed: nextPage,
                  icon: const Icon(
                    Icons.arrow_downward_outlined,
                    size: 30,
                  ),
                ),
              ],
            ),

            /// Empty Space
            SizedBox(
              height: size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
