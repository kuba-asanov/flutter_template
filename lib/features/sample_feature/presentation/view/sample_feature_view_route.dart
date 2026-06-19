import 'package:flutter/material.dart';
import 'package:flutter_template/core/navigation/app_router.dart';
import 'package:flutter_template/features/sample_feature/presentation/details/sample_item_details_view_route.dart';
import 'package:flutter_template/features/sample_feature/di/sample_feature_di_module.dart';
import 'package:flutter_template/features/sample_feature/presentation/bloc/sample_feature_bloc.dart';
import 'package:flutter_template/features/sample_feature/presentation/view/sample_feature_screen.dart';
import 'package:flutter_template/features/settings/presentation/view/settings_view_route.dart';
import 'package:go_router/go_router.dart';
import 'package:scoped_di/scoped_di.dart';

class SampleFeatureViewRoute extends GoRoute {
  SampleFeatureViewRoute()
      : super(
          path: AppRoutes.sampleFeature.path,
          name: AppRoutes.sampleFeature.name,
          routes: [
            SampleItemDetailsViewRoute(),
            SettingsViewRoute(),
          ],
          builder: (context, state) {
            return DiScopeBuilder(
              createModule: SampleFeatureDiModule.new,
              builder: (context, module) {
                final bloc = module.get<SampleFeatureBloc>()
                  ..add(const InitEvent());
                return SampleFeatureScreen(
                  bloc: bloc,
                  router: SampleFeatureViewRouter(),
                );
              },
            );
          },
        );
}

class SampleFeatureViewRouter {
  void openDetails(BuildContext context) {
    AppRouter.pushNamed(context, AppRoutes.sampleItemDetails);
  }

  void openSettings(BuildContext context) {
    AppRouter.pushNamed(context, AppRoutes.settings);
  }
}
