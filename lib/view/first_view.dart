import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/image_controller.dart';
import 'package:flutter_application_1/data/dev_data.dart';
import 'package:flutter_application_1/model/dev_theme.dart';
import 'package:flutter_application_1/utils/custom_colors.dart';
import 'package:flutter_application_1/widgets/skills_box.dart';
import 'package:flutter_application_1/widgets/skills_progress.dart';
import 'package:get/get.dart';

class FirstView extends StatelessWidget {
  const FirstView({
    super.key,
    required this.nextPage,
  });

  final VoidCallback nextPage;
  @override
  Widget build(BuildContext context) {
    final ImageController controller = Get.put(ImageController());
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return Obx(
      () => Scaffold(
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          child: ThemeSwitcher(
            clipper: const ThemeSwitcherCircleClipper(),
            builder: (context) {
              bool isDarkMode =
                  ThemeModelInheritedNotifier.of(context).theme.brightness ==
                      Brightness.dark;
              String themeName = isDarkMode ? 'light' : 'dark';
              return DayNightSwitcherIcon(
                isDarkModeEnabled: isDarkMode,
                onStateChanged: (darkMode) async {
                  var service = await ThemeService.instance
                    ..save(darkMode ? 'dark' : 'light');
                  var theme = service.getByName(themeName);
                  // ignore: use_build_context_synchronously
                  ThemeSwitcher.of(context)
                      .changeTheme(theme: theme, isReversed: darkMode);
                },
              );
            },
          ),
        ),
        body: Column(
          children: [
            // Empty Space
            SizedBox(
              height: size.height * 0.1,
            ),

            /// Developer Avatar
            Container(
              padding: EdgeInsets.all(size.height * .01),
              decoration: BoxDecoration(
                color: theme.cardColor,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: size.height * .15,
                backgroundColor: AppColors.appPrimary,
                backgroundImage: AssetImage(
                  controller.photos[controller.pos.value],
                ),
              ),
            ),

            // Empty Space
            SizedBox(
              height: size.height * 0.01,
            ),

            /// Developer Full Name
            Text(
              DevData.devData.name,
              style: theme.textTheme.displayLarge,
              textScaler: TextScaler.noScaling,
            ),

            // Empty Space
            SizedBox(
              height: size.height * 0.02,
            ),

            /// Developer Skills
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              spacing: size.width * .05,
              runSpacing: size.width * .03,
              children: List.generate(
                  DevData.devData.skillsAndProgress.length,
                  (index) => SkillsBox(
                        text: DevData.devData.skillsAndProgress[index].name,
                      )),
            ),

            // Empty Space
            SizedBox(
              height: size.height * 0.03,
            ),

            /// Skills Progress
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                DevData.devData.skillsAndProgress.length,
                (index) => SkillsProgress(
                  progress: DevData.devData.skillsAndProgress[index].progress,
                  title: DevData.devData.skillsAndProgress[index].name,
                ),
              ),
            ),
            // Empty Space
            Expanded(child: Container()),

            /// Next Page
            IconButton(
              color: theme.canvasColor,
              onPressed: nextPage,
              icon: const Icon(
                Icons.arrow_downward_outlined,
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
