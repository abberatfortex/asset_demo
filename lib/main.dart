import 'package:asset_demo/screens/asset_details.dart';
import 'package:asset_demo/screens/file_password.dart';
import 'package:asset_demo/screens/portfolio_information.dart';
import 'package:asset_demo/screens/statement_of_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          appBarTheme: AppBarTheme(color: Colors.grey.shade50, titleTextStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16), elevation: 0, centerTitle: true, iconTheme: IconThemeData(color: Colors.black)),
          primaryColor: Colors.white),
      darkTheme:  ThemeData(
          scaffoldBackgroundColor: Colors.grey.shade900,
          iconTheme: IconThemeData(color: Colors.white),
          brightness: Brightness.dark,
          appBarTheme: AppBarTheme(color: Colors.grey.shade900, titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16), elevation: 0, centerTitle: true, iconTheme: IconThemeData(color: Colors.white)),
        primaryColor: Colors.black),
      themeMode: ThemeMode.system,
      home: PortfolioInformation(),
    );
  }
}
