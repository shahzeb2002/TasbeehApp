import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasbeeh_app/pages/splash_page.dart';

import 'controllers/tasbeeh_controller.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => TasbeehController(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final tasbeeh = Provider.of<TasbeehController>(context);
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: tasbeeh.isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: SplashPage(),
    );
  }
}

