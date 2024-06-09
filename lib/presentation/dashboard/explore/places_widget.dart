// Created by Santosh G on 10/06/24.

part of 'explore_screen.dart';

class _PlacesWidget extends StatelessWidget {
  const _PlacesWidget({
    required this.places,
    required this.currentExploreType,
  });

  final List<PlaceModel> places;
  final ExploreType currentExploreType;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          alignment: Alignment.center,
          children: [
            for (final point in places) ...{
              Positioned(
                top: constraints.maxHeight * point.offset.dy,
                left: constraints.maxWidth * point.offset.dx,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  child: Container(
                    padding: const EdgeInsets.all(Spacing.margin6),
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(AppDimens.radius8),
                        topLeft: Radius.circular(AppDimens.radius8),
                        topRight: Radius.circular(AppDimens.radius8),
                      ),
                    ),
                    child: _PointContentWidget(
                      exploreType: currentExploreType,
                      model: point,
                    ),
                  ),
                ),
              ),
            },
          ],
        );
      },
    );
  }
}

class _PointContentWidget extends StatelessWidget {
  const _PointContentWidget({
    required this.exploreType,
    required this.model,
  });

  final ExploreType exploreType;
  final PlaceModel model;

  @override
  Widget build(BuildContext context) {
    switch (exploreType) {
      case ExploreType.price:
        return Text(
          model.price,
          style: const TextStyle(color: AppColors.white),
        );
      case ExploreType.cosyAreas:
      case ExploreType.infrastructure:
      case ExploreType.withoutAnyLayer:
        return const Icon(
          Icons.maps_home_work,
          color: AppColors.white,
        );
    }
  }
}
