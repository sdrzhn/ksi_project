import 'package:flutter/material.dart';
import 'package:ksi/Routes/generated_routes.dart';
import 'package:ksi/pages/login_view.dart';
import 'pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LandingPage(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator().generateRoute,
    );
  }
}