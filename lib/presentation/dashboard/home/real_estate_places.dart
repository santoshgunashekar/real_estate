// Created by Santosh G on 09/06/24.

part of 'home_screen.dart';


class _PlacesWidget extends StatelessWidget {
  const _PlacesWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: Spacing.margin24,
      ),
      padding: const EdgeInsets.all(Spacing.margin12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppDimens.radius24),
      ),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          _RealEstateTile(
            imagePath: JpegImages.place2,
            address: AppUtils.getRandomAddress(),
          ),
          Spacing.sizedBoxHt12,
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: _RealEstateTile(
                    imagePath: JpegImages.place1,
                    address: AppUtils.getRandomAddress(),
                  ),
                ),
                Spacing.sizedBoxWt12,
                Expanded(
                  child: _RealEstateTile(
                    imagePath: JpegImages.place3,
                    address: AppUtils.getRandomAddress(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _RealEstateTile extends StatelessWidget {
  const _RealEstateTile({
    required this.address,
    required this.imagePath,
  });

  final String address;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimens.radius24),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppDimens.radius24),
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
              width: double.infinity,
              height: 200,
            ),
          ),
          _RealEstateWidgetButton(address: address),
        ],
      ),
    );
  }
}

class _RealEstateWidgetButton extends StatelessWidget {
  const _RealEstateWidgetButton({
    required this.address,
  });

  final String address;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: Spacing.margin16,
        left: Spacing.margin24,
        right: Spacing.margin24,
      ),
      padding: const EdgeInsets.only(
        top: Spacing.margin2,
        bottom: Spacing.margin2,
        right: Spacing.margin2,
        left: Spacing.margin2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimens.radius24),
        color: AppColors.white.withOpacity(0.7),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              address,
              style: const TextStyle(
                color: AppColors.black,
                fontSize: AppFontSize.s12,
                fontWeight: AppFontWeight.medium,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
          Spacing.sizedBoxWt8,
          Container(
            padding: const EdgeInsets.all(Spacing.margin8),
            decoration: const BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.navigate_next,
              color: AppColors.black,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
