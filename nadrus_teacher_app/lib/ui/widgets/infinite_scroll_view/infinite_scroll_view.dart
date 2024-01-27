import 'package:animated_infinite_scroll_pagination/animated_infinite_scroll_pagination.dart';
import 'package:flutter/material.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/base_scroll_view.dart';

import '../animations/customized_animated_widget.dart';
import '../loaders/loader.dart';
import 'pagination_error_widget.dart';
import 'pagination_load_widget.dart';

/// [VM] a view model extends [PaginationViewModel]
/// [T] the Model of item
class InfiniteScrollView<VM extends PaginationViewModel<T>, T extends Object>
    extends StatelessWidget {
  /// [viewModel] a class extends [PaginationViewModel]
  final VM viewModel;

  /// [itemBuilder] callback return [Widget] with item [T].
  final Widget Function(int index, T item) itemBuilder;

  /// pass [topWidget] when you want to place a widget at the top of the first [itemBuilder] widget.
  final Widget? topWidget;

  /// [onRefresh] callback called when user swipe to refresh list.
  final Function()? onRefresh;

  /// [ScrollPhysics] of pagination scrollView.
  final ScrollPhysics? physics;

  /// [retry] callback called when pagination request faild and user press on [PaginationErrorWidget].
  final Function()? retry;

  /// warp [ScrollView] in [RefreshIndicator] when [refreshIndicator] == `true`
  ///
  /// default value is `true`
  final bool refreshIndicator;

  /// Scroll Direction default value is [Axis.vertical]
  final Axis scrollDirection;

  /// A delegate that controls the layout of the children within the [GridView].
  final SliverGridDelegate? gridDelegate;

  /// Whether to spawn a new isolate on which to calculate the diff on.
  final bool? spawnIsolate;

  /// build [AnimatedInfiniteScrollView] with basic configuration
  const InfiniteScrollView({
    required this.viewModel,
    required this.itemBuilder,
    this.refreshIndicator = true,
    this.onRefresh,
    this.topWidget,
    this.retry,
    this.physics,
    this.scrollDirection = Axis.vertical,
    this.gridDelegate,
    this.spawnIsolate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedInfiniteScrollView<T>(
      viewModel: viewModel,
      refreshIndicator: refreshIndicator,
      topWidget: topWidget,
      loadingWidget: const CustomizedAnimatedWidget(child: Loader()),
      footerLoadingWidget: const PaginationLoaderWidget(),
      errorWidget: PaginationErrorWidget(
          retry: retry ??
              () => viewModel.fetchData(viewModel.paginationParams.page)),
      physics: physics ?? scrollPhysics,
      onRefresh: onRefresh,
      gridDelegate: gridDelegate,
      spawnIsolate: spawnIsolate,
      scrollDirection: scrollDirection,
      itemBuilder: (index, item) =>
          CustomizedAnimatedWidget(child: itemBuilder.call(index, item)),
    );
  }
}
