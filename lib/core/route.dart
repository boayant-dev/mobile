import 'package:auto_route/auto_route.dart';
import 'package:boayant/screens/home_screen.dart';
import 'package:boayant/screens/signup_screen.dart';
import 'package:boayant/screens/topup_screen.dart';
import 'package:flutter/material.dart' hide Router;

import '../screens/history_screen.dart';
import '../screens/message_screen.dart';
import '../screens/onboarding_screen.dart';
import '../screens/root_screen.dart';
import '../screens/wallet_screen.dart';

part 'route.gr.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(path: '/onboarding', page: OnboardingScreen),
    AutoRoute(path: '/signup', page: SignupScreen),
    AutoRoute(path: '/', page: RootScreen, children: [
      AutoRoute(path: 'home', page: HomeScreen),
      AutoRoute(path: 'wallet', page: WalletScreen),
      AutoRoute(path: 'topup', page: TopupScreen),
      AutoRoute(path: 'history', page: HistoryScreen),
      AutoRoute(path: 'message', page: MessageScreen),
    ])
  ],
  replaceInRouteName: 'Screen,Route',
)
class BoayantRouter extends _$BoayantRouter {}
