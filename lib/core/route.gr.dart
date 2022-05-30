// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'route.dart';

class _$BoayantRouter extends RootStackRouter {
  _$BoayantRouter([GlobalKey<NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    OnboardingRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardingRouteArgs>(
          orElse: () => const OnboardingRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: OnboardingScreen(key: args.key));
    },
    SignupRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SignupScreen());
    },
    RootRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const RootScreen());
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomeScreen());
    },
    WalletRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const WalletScreen());
    },
    TopupRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const TopupScreen());
    },
    HistoryRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HistoryScreen());
    },
    MessageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const MessageScreen());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(OnboardingRoute.name, path: '/onboarding'),
        RouteConfig(SignupRoute.name, path: '/signup'),
        RouteConfig(RootRoute.name, path: '/', children: [
          RouteConfig(HomeRoute.name, path: 'home', parent: RootRoute.name),
          RouteConfig(WalletRoute.name, path: 'wallet', parent: RootRoute.name),
          RouteConfig(TopupRoute.name, path: 'topup', parent: RootRoute.name),
          RouteConfig(HistoryRoute.name,
              path: 'history', parent: RootRoute.name),
          RouteConfig(MessageRoute.name,
              path: 'message', parent: RootRoute.name)
        ])
      ];
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({Key? key})
      : super(OnboardingRoute.name,
            path: '/onboarding', args: OnboardingRouteArgs(key: key));

  static const String name = 'OnboardingRoute';
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'OnboardingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SignupScreen]
class SignupRoute extends PageRouteInfo<void> {
  const SignupRoute() : super(SignupRoute.name, path: '/signup');

  static const String name = 'SignupRoute';
}

/// generated route for
/// [RootScreen]
class RootRoute extends PageRouteInfo<void> {
  const RootRoute({List<PageRouteInfo>? children})
      : super(RootRoute.name, path: '/', initialChildren: children);

  static const String name = 'RootRoute';
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [WalletScreen]
class WalletRoute extends PageRouteInfo<void> {
  const WalletRoute() : super(WalletRoute.name, path: 'wallet');

  static const String name = 'WalletRoute';
}

/// generated route for
/// [TopupScreen]
class TopupRoute extends PageRouteInfo<void> {
  const TopupRoute() : super(TopupRoute.name, path: 'topup');

  static const String name = 'TopupRoute';
}

/// generated route for
/// [HistoryScreen]
class HistoryRoute extends PageRouteInfo<void> {
  const HistoryRoute() : super(HistoryRoute.name, path: 'history');

  static const String name = 'HistoryRoute';
}

/// generated route for
/// [MessageScreen]
class MessageRoute extends PageRouteInfo<void> {
  const MessageRoute() : super(MessageRoute.name, path: 'message');

  static const String name = 'MessageRoute';
}
