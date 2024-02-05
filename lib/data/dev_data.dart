import 'package:flutter_application_1/model/dev_model.dart';

class DevData {
  DevData._();

  static DevModel devData = DevModel(
    splashName: "Resume Mohammed",
    name: "Mohammed Al-Hajjeeh",
    bio: devBio,
    education: devEducation,
    skillsAndProgress: <SkillsData>[
      SkillsData(
        name: 'Software Engineer',
        progress: 0.7,
      ),
      SkillsData(
        name: 'Mobile App Developer',
        progress: 0.9,
      ),
      SkillsData(
        name: 'Flutter Developer',
        progress: 1,
      ),
    ],
    skills: <String>[
      "Flutter ui/ux.",
      "Restful Api Flutter (Http).",
      "State Management (getx).",
      "Firebase.",
      "Postman.",
      "GitHup.",
    ],
    workExperience: [
      "The Hope International Company\n(Flutter Mobile development)\nTrained in zoom (Flutter Mobile MVC (37 HOURS)) I learnt(Ui/Ux, Json Restfull Api, State Management(getx)).",
      "Education For Employment Company\n(Flutter Mobile development)\nTrained in Princess Sumaya University for Technology(Flutter Mobile MVC, Singleton Design Pattern) I learnt(Ui/Ux, Json Restfull Api, State Management(getx), Firebase).",
    ],
    certificatesCourses: [
      "Education For Employment Company\n(Flutter).",
      "Education For Employment Company\n(Work Readiness and English Skills).",
      "The Hope International Company\n(Flutter).",
      "Cisco Networking Academy\n(Entrepreneurship).",
    ],
    project: [
      "The World App\nThe application is an application to show news, weathers, and clocks for all parts of the world.",
      "Cryptocurrency J-Wallet App\nJ-Wallet app is cryptocurrency wallet for send and receive Solana and Jcoins.",
    ],
    references: [
      "Education For Employment Company\n(Flutter).",
      "Education For Employment Company\n(Work Readiness and English Skills).",
      "The Hope International Company\n(Flutter).",
      "Cisco Networking Academy\n(Entrepreneurship).",
      "The World App.",
      "Cryptocurrency J-Wallet App.",
    ],
    urlReferences: [
      "https://drive.google.com/file/d/1uYJyrq3HWNp_qv1puDB9pVoGjEFGcOaW/view?usp=drive_link",
      "https://drive.google.com/file/d/1U8if9pP7EX2zBU2ADId_pGQhl8CUw4ZV/view?usp=drive_link",
      "https://drive.google.com/file/d/1qausA75j72VBomuUqJHWYPuKa12kQQjA/view?usp=drive_link",
      "https://drive.google.com/file/d/1ML2olJ1i6-zs-42jXjEg_x6uzxTP5A6o/view?usp=drive_link",
      "",
      "https://github.com/mohammedhajieh/J-Wallet",
    ],
    languageAndProgress: [
      LanguageData(
        name: 'English',
        progress: 0.7,
      ),
      LanguageData(
        name: 'Arabic',
        progress: 1,
      ),
    ],
    number: '+962 7 9009 3239',
    mail: 'mohammedhajieh13@gmail.com',
    cv: 'Download CV 📃',
    gitHup: 'https://github.com/mohammedhajieh',
    linkedIn: 'https://www.linkedin.com/in/mohammed-hajieh/',
    portfolioWeb: 'https://mohammedhajieh.github.io/Portfolio',
  );

  static const String devBio = """
I'm Mohammed, fresh graduate jordan university of science and technology software engineering major very good gpa with a passion for mobile development using Dart and Flutter 📱.
""";
  static const String devEducation = """
Bachelor’s degree in software engineering from jordan university of science and technology ( 2019 - 2023 ) My Grade: 3.18 (Very Good) 👨🏻‍💻.
      """;
}
