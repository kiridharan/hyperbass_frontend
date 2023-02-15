import 'package:blockchain/view/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class ScreensExample extends StatefulWidget {
  const ScreensExample({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  State<ScreensExample> createState() => _ScreensExampleState();
}

class _ScreensExampleState extends State<ScreensExample> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // print("reached the bottom");
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return WebSmoothScroll(
      controller: _scrollController,
      child: AnimatedBuilder(
        animation: widget.controller,
        builder: (context, child) {
          switch (widget.controller.selectedIndex) {
            case 0:
              return const HomePage();
            case 1:
              return Text(
                'Search',
                style: theme.textTheme.headlineSmall,
              );
            case 2:
              return Text(
                'People',
                style: theme.textTheme.headlineSmall,
              );
            case 3:
              return Text(
                'Favorites',
                style: theme.textTheme.headlineSmall,
              );
            case 4:
              return Text(
                'Profile',
                style: theme.textTheme.headlineSmall,
              );
            case 5:
              return Text(
                'Settings',
                style: theme.textTheme.headlineSmall,
              );
            default:
              return Text(
                'Not found page',
                style: theme.textTheme.headlineSmall,
              );
          }
        },
      ),
    );
  }
}
