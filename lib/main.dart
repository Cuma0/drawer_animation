import 'home_page_view.dart';
import 'utils/color_scheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Drawer Animation 🔥🚀

// github: https://github.com/Cuma0 👨‍💻

// instagram: @artinflutterland 👋

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawer Animation',
      theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: ColorSchemeLight.instance!.blue,
          iconTheme: IconThemeData(
            color: ColorSchemeLight.instance!.lightBlue,
          ),
        ),
        iconTheme: IconThemeData(
          color: ColorSchemeLight.instance!.lightBlue,
        ),
        scaffoldBackgroundColor: ColorSchemeLight.instance!.blue,
        primarySwatch: Colors.blue,
      ),
      home: const HomePageView(),
    );
  }
}
