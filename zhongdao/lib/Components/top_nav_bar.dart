import 'package:flutter/cupertino.dart';

// 定义右侧按钮类型
enum NavBarButtonType { add, search, settings, none }

class TopNavBar extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final NavBarButtonType rightButtonType;
  final VoidCallback? onBackPressed;
  final VoidCallback? onAddPressed;
  final VoidCallback? onSearchPressed;
  final VoidCallback? onSettingsPressed;

  const TopNavBar({
    super.key,
    required this.title,
    this.showBackButton = false,
    this.rightButtonType = NavBarButtonType.add,
    this.onBackPressed,
    this.onAddPressed,
    this.onSearchPressed,
    this.onSettingsPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: Text(title),
      automaticallyImplyLeading: false,
      leading: showBackButton
          ? CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: onBackPressed,
              child: const Icon(CupertinoIcons.back),
            )
          : null,
      trailing: _buildRightButton(),
    );
  }

  // 根据类型构建右侧按钮
  Widget? _buildRightButton() {
    switch (rightButtonType) {
      case NavBarButtonType.add:
        return CupertinoButton(
          onPressed: onAddPressed,
          child: const Icon(CupertinoIcons.add),
        );
      case NavBarButtonType.search:
        return CupertinoButton(
          onPressed: onSearchPressed,
          child: const Icon(CupertinoIcons.search),
        );
      case NavBarButtonType.settings:
        return CupertinoButton(
          onPressed: onSettingsPressed,
          child: const Icon(CupertinoIcons.settings),
        );
      case NavBarButtonType.none:
        return null;
    }
  }

  @override
  Size get preferredSize => const CupertinoNavigationBar().preferredSize;

  @override
  bool shouldFullyObstruct(BuildContext context) {
    final CupertinoNavigationBar navBar =
        build(context) as CupertinoNavigationBar;
    final Color? backgroundColor = navBar.backgroundColor;

    if (backgroundColor == null) {
      return false;
    }

    final double effectiveOpacity = backgroundColor.opacity;
    return effectiveOpacity >= 0.8;
  }
}
