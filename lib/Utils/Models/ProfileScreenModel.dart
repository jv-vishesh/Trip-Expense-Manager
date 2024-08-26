class ProfileScreenModel {
  final String title;
  final String? subtitle;
  final String imagePath;
  final Function()? onTap;

  ProfileScreenModel(
      {required this.title,
      this.subtitle,
      required this.imagePath,
      this.onTap});
}
