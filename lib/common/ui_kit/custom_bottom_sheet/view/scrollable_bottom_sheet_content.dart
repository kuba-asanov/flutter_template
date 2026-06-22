part of '../custom_bottom_sheet.dart';

class ScrollableBottomSheetContent extends StatelessWidget {
  const ScrollableBottomSheetContent({
    required this.title,
    required this.showCloseButton,
    required this.child,
    this.withIndicator = true,
    this.description,
    this.withoutTitleAndClose = false,
    super.key,
  });

  final String title;
  final bool showCloseButton;
  final Widget child;
  final bool withIndicator;
  final String? description;
  final bool withoutTitleAndClose;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
          color: AppColors.onSupplementary,
        ),
        child: ListView(
          children: [
            BottomSheetAppBar(
              title: title,
              withIndicator: withIndicator,
              showCloseButton: showCloseButton,
              withoutTitleAndClose: withoutTitleAndClose,
              description: description,
            ),
            child,
          ],
        ),
      );
}
