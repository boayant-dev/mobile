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
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(OnboardingRoute.name, path: '/onboarding'),
        RouteConfig(SignupRoute.name, path: '/signup')
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
