import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/dev_data.dart';
import 'package:flutter_application_1/utils/custom_str.dart';

class ThirdView extends StatelessWidget {
  const ThirdView({super.key, required this.backPage, required this.nextPage});

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

            /// Experience
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
                    AppStrings.thirdScreenWorkExperience,
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
                          DevData.devData.workExperience.length,
                          (index) => Text(
                            "${index + 1}. ${DevData.devData.workExperience[index]}",
                            style: theme.textTheme.bodyMedium,
                            textScaler: TextScaler.noScaling,
                          ),
                        ),
                      ))
                ],
              ),
            ),

            /// CERTIFICATE
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
                    AppStrings.thirdScreenCertificates,
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
                        DevData.devData.certificatesCourses.length,
                        (index) => Text(
                          "${index + 1}. ${DevData.devData.certificatesCourses[index]}",
                          style: theme.textTheme.bodyMedium,
                          textScaler: TextScaler.noScaling,
                        ),
                      ),
                    ),
                  )
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
