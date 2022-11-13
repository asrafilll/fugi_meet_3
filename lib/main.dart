import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fugi_meet_3/presentation/Homepage/home_page.dart';

import 'shared/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: AppColor.backgroundColor,
          titleTextStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColor.textColor,
          ),
          iconTheme: IconThemeData(
            color: AppColor.textColor,
          ),
        ),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: AppColor.textColor,
              fontFamily: 'Poppins',
              displayColor: AppColor.textColor,
            ),
      ),
      home: const HomePage(),
    );
  }
}
