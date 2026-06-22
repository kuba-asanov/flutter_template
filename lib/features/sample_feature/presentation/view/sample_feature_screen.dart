import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/common/app_assets/app_assets.dart';
import 'package:flutter_template/core/localization/locale_extension.dart';
import 'package:flutter_template/features/sample_feature/domain/models/sample_item.dart';
import 'package:flutter_template/features/sample_feature/presentation/bloc/sample_feature_bloc.dart';
import 'package:flutter_template/features/sample_feature/presentation/view/sample_feature_view_route.dart';

class SampleFeatureScreen extends StatelessWidget {
  const SampleFeatureScreen({
    required this.bloc,
    required this.router,
    super.key,
  });

  final SampleFeatureBloc bloc;
  final SampleFeatureViewRouter router;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SampleFeatureBloc, SampleFeatureState>(
      bloc: bloc,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(context.locale.homeTitle),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () => router.openSettings(context),
              ),
            ],
          ),
          body: _buildBody(context, state),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, SampleFeatureState state) {
    return switch (state.status) {
      SampleFeatureStatus.initial ||
      SampleFeatureStatus.loading =>
        const _LoadingView(),
      SampleFeatureStatus.loaded => _LoadedView(
          items: state.sampleItems ?? [],
          router: router,
        ),
      SampleFeatureStatus.error => const _ErrorView(),
    };
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _LoadedView extends StatelessWidget {
  const _LoadedView({
    required this.items,
    required this.router,
  });

  final List<SampleItem> items;
  final SampleFeatureViewRouter router;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      restorationId: 'sampleItemListView',
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        return ListTile(
          title: Text(context.locale.sampleItem(item.id)),
          leading: CircleAvatar(
            foregroundImage: AssetImage(AppAssets.image.flutterLogo),
          ),
          onTap: () => router.openDetails(context),
        );
      },
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Error loading items'),
    );
  }
}
