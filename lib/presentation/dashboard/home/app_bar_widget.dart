// Created by Santosh G on 09/06/24.

part of 'home_screen.dart';

class _AppBar extends StatelessWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Spacing.margin12),
      child: Row(
        children: [
          const _LocationWidget(),
          const Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(AppDimens.radius24),
            child: Image.asset(
              JpegImages.profile,
              height: 32,
              width: 32,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class _LocationWidget extends StatelessWidget {
  const _LocationWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimens.radius4),
        color: AppColors.white,
      ),
      padding: const EdgeInsets.all(Spacing.margin8),
      child: const Row(
        children: [
          Icon(
            Icons.location_on_outlined,
            color: AppColors.colorA29681,
            size: 16,
          ),
          Text(
            "Saint Petersburg",
            style: TextStyle(
              color: AppColors.colorA29681,
              fontWeight: FontWeight.w500,
              fontSize: AppFontSize.s14,
            ),
          ),
        ],
      ),
    );
  }
}
