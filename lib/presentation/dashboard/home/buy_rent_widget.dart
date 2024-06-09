// Created by Santosh G on 09/06/24.

part of 'home_screen.dart';

class _BuyRentWidget extends StatelessWidget {
  const _BuyRentWidget();

  @override
  Widget build(BuildContext context) {
    const double spacing = Spacing.margin12;
    final double width =
        MediaQuery.of(context).size.width - Spacing.margin12 * 2 - spacing;
    return Padding(
      padding: const EdgeInsets.all(Spacing.margin12),
      child: SizedBox(
        height: width / 2,
        child: const Row(
          children: [
            Expanded(
              child: _BuyWidget(),
            ),
            Spacing.sizedBoxWt12,
            Expanded(
              child: _RentWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class _BuyWidget extends StatelessWidget {
  const _BuyWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Spacing.margin12),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primary,
      ),
      child: const Column(
        children: [
          Text(
            "BUY",
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w400,
              fontSize: AppFontSize.s16,
            ),
          ),
          Spacer(),
          Text(
            "1 034",
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w600,
              fontSize: AppFontSize.s36,
            ),
          ),
          Text(
            "offers",
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w400,
              fontSize: AppFontSize.s14,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class _RentWidget extends StatelessWidget {
  const _RentWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Spacing.margin12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppDimens.radius16),
      ),
      child: const Column(
        children: [
          Text(
            "RENT",
            style: TextStyle(
              color: AppColors.colorA29681,
              fontWeight: FontWeight.w400,
              fontSize: AppFontSize.s16,
            ),
          ),
          Spacer(),
          Text(
            "2 212",
            style: TextStyle(
              color: AppColors.colorA29681,
              fontWeight: FontWeight.w600,
              fontSize: AppFontSize.s36,
            ),
          ),
          Text(
            "offers",
            style: TextStyle(
              color: AppColors.colorA29681,
              fontWeight: FontWeight.w400,
              fontSize: AppFontSize.s14,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
