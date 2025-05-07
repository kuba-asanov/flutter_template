import 'package:flutter/material.dart';
import 'package:flutter_template/common/ui_kit/app_colors.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
    this.color,
    this.thickness = 1,
    this.margin,
  });
  final Color? color;
  final double thickness;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: ColoredBox(
        color: color ?? AppColors.secondary,
        child: SizedBox(height: thickness),
      ),
    );
  }
}
