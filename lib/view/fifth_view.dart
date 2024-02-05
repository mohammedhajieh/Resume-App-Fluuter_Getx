import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/dev_data.dart';
import 'package:flutter_application_1/utils/custom_str.dart';
import 'package:flutter_application_1/widgets/contact_card.dart';
import 'package:flutter_application_1/widgets/skills_progress.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class FifthView extends StatelessWidget {
  const FifthView({
    super.key,
    required this.backPage,
  });

  final VoidCallback backPage;

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

            /// Languages
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
                    AppStrings.fifthScreenLanguage,
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
                        DevData.devData.languageAndProgress.length,
                        (index) => SkillsProgress(
                          progress: DevData
                              .devData.languageAndProgress[index].progress,
                          title:
                              DevData.devData.languageAndProgress[index].name,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            /// Contact
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
                    AppStrings.fifthScreenContact,
                    style: theme.textTheme.bodyLarge,
                    textScaler: TextScaler.noScaling,
                  ),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  Text(
                    '  To contact me, Click on this options:👇🔗',
                    style: theme.textTheme.bodyMedium,
                    textScaler: TextScaler.noScaling,
                  ),
                  SizedBox(
                    height: size.height * .005,
                  ),
                  InkWell(
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                          'mailto:${DevData.devData.mail}.org',
                        ),
                      );
                    },
                    child: ContactCard(
                        title: DevData.devData.mail,
                        icon: AppStrings.gmailIcon),
                  ),
                  InkWell(
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                          'tel://${DevData.devData.number}',
                        ),
                      );
                    },
                    child: ContactCard(
                        title: DevData.devData.number,
                        icon: AppStrings.phoneIcon),
                  ),
                  InkWell(
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                          'https://drive.google.com/file/d/1lxs10c5ClezL07CQg0Klzh6_DN_ba93a/view?usp=drive_link',
                        ),
                      );
                    },
                    child: ContactCard(
                      title: DevData.devData.cv,
                      icon: AppStrings.cv,
                    ),
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: size.height * 0.08,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: theme.cardColor,
                            shape: const CircleBorder(),
                          ),
                          onPressed: () {
                            launchUrl(
                              Uri.parse(
                                DevData.devData.gitHup,
                              ),
                            );
                          },
                          child: Lottie.asset(
                            AppStrings.gitHup,
                            height: 80,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.08,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: theme.cardColor,
                            shape: const CircleBorder(),
                          ),
                          onPressed: () {
                            launchUrl(
                              Uri.parse(
                                DevData.devData.linkedIn,
                              ),
                            );
                          },
                          child: Lottie.asset(
                            AppStrings.linkedIn,
                            height: 40,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.08,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: theme.cardColor,
                            shape: const CircleBorder(),
                          ),
                          onPressed: () {
                            launchUrl(
                              Uri.parse(
                                DevData.devData.portfolioWeb,
                              ),
                            );
                          },
                          child: Lottie.asset(
                            AppStrings.portfolio,
                            height: 80,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// Empty Space
            Expanded(child: Container()),

            /// Next Page
            IconButton(
              color: theme.canvasColor,
              onPressed: backPage,
              icon: const Icon(
                Icons.arrow_upward_outlined,
                size: 30,
              ),
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
