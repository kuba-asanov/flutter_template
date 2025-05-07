// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_template/common/ui_kit/app_colors.dart';
// Project imports:

class ResizeIndicator extends StatelessWidget {
  const ResizeIndicator({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          const SizedBox(height: 4),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.onSupplementary,
                borderRadius: BorderRadius.circular(5),
              ),
              width: 36,
              height: 5,
            ),
          ),
          const SizedBox(height: 5),
        ],
      );
}
