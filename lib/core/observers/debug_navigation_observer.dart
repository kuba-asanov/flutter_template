import 'package:flutter/material.dart';
import 'package:flutter_template/common/utils/logger.dart';

class DebugNavigatorObserver extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    _print(
      'POP - Popped route: ${route.settings.name}, Current top route: ${previousRoute?.settings.name}',
    );
    super.didPop(route, previousRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    _print(
      'PUSH - Pushed route: ${route.settings.name}, Prev route: ${previousRoute?.settings.name}',
    );
    super.didPush(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    _print(
      'REPLACE - New route: ${newRoute?.settings.name}, Prev route: ${oldRoute?.settings.name}',
    );
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    _print(
      'REMOVE - Removed route: ${route.settings.name}, Route below: ${previousRoute?.settings.name}',
    );
    super.didPop(route, previousRoute);
  }

  void _print(String string) {
    logger.d('[Router] [${navigator?.restorationId}] $string');
  }
}
