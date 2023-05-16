import 'package:asset_demo/screens/portfolio_files_listing.dart';
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          appBarTheme: AppBarTheme(
              color: Colors.grey.shade50,
              titleTextStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
              elevation: 0,
              centerTitle: true,
              iconTheme: const IconThemeData(color: Colors.black)),
          primaryColor: Colors.white),
      darkTheme: ThemeData(
          scaffoldBackgroundColor: Colors.grey.shade900,
          iconTheme: const IconThemeData(color: Colors.white),
          brightness: Brightness.dark,
          appBarTheme: AppBarTheme(
              color: Colors.grey.shade900,
              titleTextStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
              elevation: 0,
              centerTitle: true,
              iconTheme: const IconThemeData(color: Colors.white)),
          primaryColor: Colors.black),
      themeMode: ThemeMode.system,
      home: PortfolioFilesListing(),
    );
  }
}
