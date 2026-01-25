import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/core/observers/debug_navigation_observer.dart';
import 'package:flutter_template/features/sample_feature/presentation/view/sample_feature_view_route.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes {
  sampleFeature,
  sampleItemDetails,
  settings,
  corner;

  String get path => '/$name';
}

class AppRouter {
  AppRouter._();

  static GoRouter? _router;

  static GoRouter router(
      // {required InitialAuthStatus authStatus,}
      ) {
    return _router ??= GoRouter(
      debugLogDiagnostics: true,
      observers: [DebugNavigatorObserver()],
      initialLocation: AppRoutes.sampleFeature.path,
      // initialLocation: authStatus == InitialAuthStatus.auth
      //     ? AppRoutes.mainScreen.path
      //     : AppRoutes.onboarding.path,
      routes: [
        SampleFeatureViewRoute(),
      ],
    );
  }

  static void goNamed(
    BuildContext context,
    AppRoutes route, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
    String? fragment,
  }) {
    context.goNamed(
      route.name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
      fragment: fragment,
    );
  }

  static Future<T?> pushNamed<T extends Object?>(
    BuildContext context,
    AppRoutes route, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    return context.pushNamed(
      route.name,
      extra: extra,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
    );
  }

  static void pop<T extends Object?>(BuildContext context, [T? result]) {
    return context.pop<T>(result);
  }
}

enum InitialAuthStatus {
  auth,
  unauth,
}
