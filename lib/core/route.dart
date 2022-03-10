import 'package:auto_route/auto_route.dart';
import 'package:boayant/screens/signup_screen.dart';
import 'package:flutter/material.dart' hide Router;

import '../screens/onboarding_screen.dart';

part 'route.gr.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(path: '/onboarding', page: OnboardingScreen),
    AutoRoute(path: '/signup', page: SignupScreen)
  ],
  replaceInRouteName: 'Screen,Route',
)
class BoayantRouter extends _$BoayantRouter {}
