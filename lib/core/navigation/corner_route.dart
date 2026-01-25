import 'package:flutter/material.dart';
import 'package:flutter_template/core/navigation/app_router.dart';
import 'package:go_router/go_router.dart';

class CornerRoute extends GoRoute {
  CornerRoute()
      : super(
          path: AppRoutes.corner.path,
          name: AppRoutes.corner.name,
          builder: (context, state) {
            return state.extra as Widget;
          },
        );
}
