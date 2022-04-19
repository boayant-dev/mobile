import 'package:auto_route/auto_route.dart';
import 'package:boayant/core/route.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../core/constants.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _routes = const <PageRouteInfo>[
      HomeRoute(),
      WalletRoute(),
      TopupRoute(),
      HistoryRoute(),
      MessageRoute(),
    ];
    const _duration = Duration(milliseconds: 400);

    return AutoTabsRouter(
        routes: _routes,
        duration: _duration,
        builder: (ctx, child, animation) {
          final _tabsRouter = AutoTabsRouter.of(ctx);
          return Scaffold(
            body: FadeTransition(opacity: animation, child: child),
            backgroundColor: Constants.greyBackground,
            bottomNavigationBar: CurvedNavigationBar(
                animationDuration: _duration,
                index: _tabsRouter.activeIndex,
                onTap: _tabsRouter.setActiveIndex,
                backgroundColor: Colors.transparent,
                items: const [
                  Icon(Icons.home),
                  Icon(Icons.account_balance_wallet),
                  Icon(Icons.add),
                  Icon(Icons.history),
                  Icon(Icons.message)
                ]),
          );
        });
  }
}
