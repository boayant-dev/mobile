import 'core/route.dart';
import 'package:flutter/material.dart';
import './injection_container.dart' as di;

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late BoayantRouter _router;
  @override
  void initState() {
    _router = BoayantRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Boayant',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: _router.defaultRouteParser(),
      routerDelegate: _router.delegate(
        initialRoutes: [OnboardingRoute()],
      ),
    );
  }
}
