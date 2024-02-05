class DevModel {
  final String splashName;
  final String name;
  final String number;
  final String mail;
  final String cv;
  final String linkedIn;
  final String gitHup;
  final String portfolioWeb;
  final String bio;
  final String education;
  final List<SkillsData> skillsAndProgress;
  final List<String> skills;
  final List<String> workExperience;
  final List<String> certificatesCourses;
  final List<String> project;
  final List<String> references;
  final List<String> urlReferences;
  final List<LanguageData> languageAndProgress;
  DevModel({
    required this.splashName,
    required this.number,
    required this.mail,
    required this.name,
    required this.cv,
    required this.gitHup,
    required this.linkedIn,
    required this.portfolioWeb,
    required this.bio,
    required this.education,
    required this.skillsAndProgress,
    required this.skills,
    required this.workExperience,
    required this.certificatesCourses,
    required this.project,
    required this.references,
    required this.urlReferences,
    required this.languageAndProgress,
  });
}

class SkillsData {
  final String name;
  final double progress;
  SkillsData({
    required this.name,
    required this.progress,
  });
}

class LanguageData {
  final String name;
  final double progress;
  LanguageData({
    required this.name,
    required this.progress,
  });
}
