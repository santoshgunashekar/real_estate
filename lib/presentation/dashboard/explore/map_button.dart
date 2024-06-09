// Created by Santosh G on 10/06/24.

part of 'explore_screen.dart';

class _ExploreTypeWidget extends StatelessWidget {
  const _ExploreTypeWidget({
    required this.onTapped,
    required this.currentExploreType,
    required this.controller,
  });

  final ValueChanged<ExploreType> onTapped;
  final ExploreType currentExploreType;
  final CustomPopupMenuController controller;

  @override
  Widget build(BuildContext context) {
    return CustomPopupMenu(
      position: PreferredPosition.top,
      menuBuilder: () {
        return Container(
          padding: const EdgeInsets.all(Spacing.margin8),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(AppDimens.radius8),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final type in ExploreType.values) ...{
                // bool isCurrent = currentExploreType == type;
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    onTapped(type);
                  },
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: Spacing.margin4),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          type.iconData,
                          color: currentExploreType == type
                              ? AppColors.primary
                              : AppColors.black.withOpacity(0.4),
                        ),
                        Spacing.sizedBoxWt8,
                        Text(
                          type.text,
                          style: TextStyle(
                            color: currentExploreType == type
                                ? AppColors.primary
                                : AppColors.black.withOpacity(0.4),
                            fontWeight: FontWeight.normal,
                            fontSize: AppFontSize.s14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              },
            ],
          ),
        );
      },
      pressType: PressType.singleClick,
      controller: controller,
      child: Icon(
        currentExploreType.iconData,
        color: AppColors.white,
      ),
    );
  }
}

class _MapButton extends StatelessWidget {
  const _MapButton({
    this.text,
    required this.icon,
  });

  final String? text;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: Spacing.margin16,
        left: Spacing.margin24,
        right: Spacing.margin24,
      ),
      padding: const EdgeInsets.all(
        Spacing.margin16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimens.radius24),
        color: AppColors.colorF8.withOpacity(0.3),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          if ((text ?? "").isNotEmpty) ...{
            Spacing.sizedBoxWt8,
            Text(
              text!,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: AppFontSize.s16,
                fontWeight: AppFontWeight.normal,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          },
        ],
      ),
    );
  }
}
