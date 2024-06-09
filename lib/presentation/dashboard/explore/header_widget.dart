// Created by Santosh G on 10/06/24.

part of 'explore_screen.dart';

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.margin32,
      ),
      child: const Row(
        children: [
          Expanded(child: _SearchBar()),
          Spacing.sizedBoxWt8,
          _FilterWidget(),
        ],
      ),
    );
  }
}

class _SearchBar extends StatefulWidget {
  const _SearchBar();

  @override
  State<_SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<_SearchBar> {
  late TextEditingController searchTextController;

  @override
  void initState() {
    super.initState();
    searchTextController = TextEditingController();
  }

  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.all(
        Spacing.margin12,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppDimens.radius32),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search_outlined,
            color: AppColors.black,
          ),
          Spacing.sizedBoxWt8,
          Expanded(
            child: TextFormField(
              style: const TextStyle(
                color: AppColors.black,
              ),
              controller: searchTextController,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterWidget extends StatelessWidget {
  const _FilterWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Spacing.margin6),
      decoration: const BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.filter_alt_outlined,
        color: AppColors.black.withOpacity(0.5),
        size: 32,
      ),
    );
  }
}
