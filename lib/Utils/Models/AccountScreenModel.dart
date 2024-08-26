class AccountScreenModel {
  final String title;
  final String? subtitle;
  final String imagePath;
  final Function()? onTap;

  AccountScreenModel(
      {required this.title,
        this.subtitle,
        required this.imagePath,
        this.onTap});
}