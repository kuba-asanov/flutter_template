part of '../custom_bottom_sheet.dart';

class StaticBottomSheetContent extends StatelessWidget {
  const StaticBottomSheetContent({
    required this.title,
    required this.withIndicator,
    required this.showCloseButton,
    required this.child,
    this.fixedHeight,
    this.titleMaxLines = 1,
    this.description,
    this.withoutTitleAndClose = false,
    super.key,
  });

  final String title;
  final bool withIndicator;
  final bool showCloseButton;
  final Widget child;
  final double? fixedHeight;
  final int titleMaxLines;
  final String? description;
  final bool withoutTitleAndClose;

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
        child: Wrap(
          children: [
            ColoredBox(
              color: AppColors.onSupplementary,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  BottomSheetAppBar(
                    title: title,
                    withIndicator: withIndicator,
                    showCloseButton: showCloseButton,
                    titleMaxLines: titleMaxLines,
                    withoutTitleAndClose: withoutTitleAndClose,
                    description: description,
                  ),
                  SizedBox(
                    height: fixedHeight,
                    child: child,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
