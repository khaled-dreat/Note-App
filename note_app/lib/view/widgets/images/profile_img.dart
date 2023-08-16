part of '../../../utils/import/import.dart';

class ProfileImg extends StatelessWidget {
  const ProfileImg({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: Image(
      image: AssetImage(AppImages.profileImg),
      errorBuilder: (context, error, stackTrace) =>
          Image.asset(AppImages.accountImg),
      loadingBuilder: (context, child, loadingProgress) {
        return const CircularProgressIndicator();
      },
    ));
  }
}
