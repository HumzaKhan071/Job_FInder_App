class Job {
  String company;
  String logUrl;
  bool isMark;
  String title;
  String location;
  String time;

  List<String> req;

  Job(
    this.company,
    this.logUrl,
    this.isMark,
    this.title,
    this.location,
    this.time,
    this.req,
  );

  static List<Job> generateJobs() {
    return [
      Job("Arhpez Techn .", "assets/images/google_logo.png", false,
          "Flutter Developer (Intern)", "Islamabad", "Full-time", [
        "Have good programming knowledge.",
        "Have strong knowledge of OOP and data structures.",
        "Should have excellent written and verbal communication skills.",
        "Knowledge of the general mobile landscape, architectures, trends, and emerging technologies."
      ]),
      Job("Krucial Systems", "assets/images/linkedin_logo.png", true,
          "Flutter Developer", "Karachi", "Part-time", [
        "Strong knowledge of Android/iOS Native App Development",
        "Dart experience is preferred",
        "Good understanding of Object-Oriented Programming & data structures",
        "Designing and developing apps",
      ]),
      Job("SMAZshop", "assets/images/airbnb_logo.png", false,
          "Flutter & Web Developer", "Karachi", "12 months", [
        " Flutter & Dart",
        "HTML/CSS/JQuery",
        "Knowledge of Wordpress would be plus",
        "PHP/MYSQL",
      ])
    ];
  }
}
