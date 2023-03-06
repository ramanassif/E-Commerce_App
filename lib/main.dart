import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:ecommerce_app/core/routing_services/routing_services.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences.setMockInitialValues({});
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await DesktopWindow.setWindowSize(const Size(400, 650));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      onGenerateRoute: AppRoute.generateRoute,
      initialRoute: 'splashScreen',
    );
  }
}
