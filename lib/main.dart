import 'package:flutter/material.dart';
import 'package:drpoint/src/config/route.dart';
import 'package:drpoint/src/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DrPoint',
      theme: AppTheme.lightTheme,
      routes: Routes.getRoute(),
        onGenerateRoute: (settings) => Routes.onGenerateRoute(settings),
      debugShowCheckedModeBanner: false,
      initialRoute: "SplashPage",
    );
  }
}

