import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

// 定义右侧按钮类型
enum NavBarButtonType { add, search, settings, none }

class TopNavBar extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final NavBarButtonType rightButtonType;
  final VoidCallback? onAddPressed;
  final VoidCallback? onSearchPressed;
  final VoidCallback? onSettingsPressed;
  final VoidCallback? onRightTextPressed;
  final String rightText;
  final bool showRight;

  const TopNavBar({
    super.key,
    required this.title,
    this.showBackButton = false,
    this.rightButtonType = NavBarButtonType.add,
    this.onAddPressed,
    this.onSearchPressed,
    this.onSettingsPressed,
    this.onRightTextPressed,
    this.rightText = '',
    this.showRight = false,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: Text(title),
      automaticallyImplyLeading: false,

      leading: showBackButton
          ? CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () => {Get.back()},
              child: const Icon(CupertinoIcons.back, size: 30.0),
            )
          : null,
      trailing: showRight ? _buildRightButton() : null,
    );
  }

  // 根据类型构建右侧按钮
  Widget? _buildRightButton() {
    switch (rightButtonType) {
      case NavBarButtonType.add:
        return CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: onAddPressed,
          child: const Icon(CupertinoIcons.add),
        );
      case NavBarButtonType.search:
        return CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: onSearchPressed,
          child: const Icon(CupertinoIcons.search),
        );
      case NavBarButtonType.settings:
        return CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: onSettingsPressed,
          child: const Icon(CupertinoIcons.settings),
        );
      case NavBarButtonType.none:
        return CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: onRightTextPressed,
          child: Text(
            rightText,
            style: const TextStyle(color: CupertinoColors.black),
          ),
        );
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
