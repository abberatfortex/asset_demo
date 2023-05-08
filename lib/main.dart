import 'package:asset_demo/screens/asset_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.white, titleTextStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18), elevation: 0, iconTheme: IconThemeData(color: Colors.black)),
          primaryColor: Colors.white),

      home: AssetDetails(),
    );
  }
}
