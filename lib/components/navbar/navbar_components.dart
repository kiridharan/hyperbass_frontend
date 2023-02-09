import 'package:blockchain/helper/navitems_helper.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class ScreensExample extends StatelessWidget {
  const ScreensExample({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final pageTitle = getTitleByIndex(controller.selectedIndex);
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              pageTitle,
              style: theme.textTheme.headlineSmall,
            ),
            const SizedBox(height: 20),
            Text(
              'Selected index: ${controller.selectedIndex}',
              style: theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 20),
            Text(
              'Extended: ${controller.extended}',
              style: theme.textTheme.bodyLarge,
            ),
          ],
        );
      },
    );
  }
}
