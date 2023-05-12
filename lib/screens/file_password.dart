import 'package:asset_demo/widgets/round_corner_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class FilePassword extends StatelessWidget {
  const FilePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Padding(
           padding: const EdgeInsets.only(left: 20.0, right: 20.0,top: 100.0),
           child: Column(
             children: [
               Image.asset('assets/images/logo.png'),
               const SizedBox(height: 50),
               Text('kooper.portfolio'),
               SizedBox(height: 20),
               Material(
                 elevation: 1,
                 borderRadius: BorderRadius.circular(10),
                 child: Container(
                   height: 50,
                   padding: EdgeInsets.symmetric(horizontal: 10),
                   child: TextField(
                     autofocus: true,
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       hintText: 'Password'
                     ),
                   ),
                 ),
               ),
               SizedBox(height: 20),
               RoundCornerButton(buttonText: 'Unlock',),

             ],
           ),
         ),
    );
  }
}
