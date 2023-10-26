import 'package:flutter/material.dart';
import 'package:responsive_dashboard/dashboard.dart';
import 'package:responsive_dashboard/style/colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dashboard',
      theme: ThemeData(
        appBarTheme: AppBarTheme(),
        primarySwatch: Colors.blue,
        splashColor: Colors.transparent,
        highlightColor: AppColors.primaryBg,
        hoverColor: Colors.transparent,
      ),
      home: Dashboard(),
    );
  }
}
