import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/dev_data.dart';
import 'package:flutter_application_1/utils/custom_str.dart';
import 'package:url_launcher/url_launcher.dart';

class FourthView extends StatelessWidget {
  const FourthView({super.key, required this.backPage, required this.nextPage});

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

            /// Project
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
                    AppStrings.fourthScreenProject,
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
                          DevData.devData.project.length,
                          (index) => Text(
                            "${index + 1}. ${DevData.devData.project[index]}",
                            style: theme.textTheme.bodyMedium,
                            textScaler: TextScaler.noScaling,
                          ),
                        ),
                      ))
                ],
              ),
            ),

            /// References
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
                    AppStrings.fourthScreenReferences,
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
                        DevData.devData.references.length,
                        (index) => RichText(
                          textScaler: TextScaler.noScaling,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "${index + 1}. ${DevData.devData.references[index]} ",
                                style: theme.textTheme.bodyMedium,
                              ),
                              WidgetSpan(
                                child: InkWell(
                                  onTap: () {
                                    launchUrl(
                                      Uri.parse(
                                          DevData.devData.urlReferences[index]),
                                    );
                                  },
                                  child: Text(
                                    '👉🔗',
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                                alignment: PlaceholderAlignment.middle,
                              ),
                            ],
                          ),
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
