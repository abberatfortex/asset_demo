import 'package:asset_demo/widgets/round_corner_button.dart';
import 'package:flutter/material.dart';

class FilePassword extends StatelessWidget {
  const FilePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 100.0),
        child: Column(
          children: [
            Image.asset('assets/images/logo.png'),
            const SizedBox(height: 50),
            const Text('kooper.portfolio'),
            const SizedBox(height: 20),
            Material(
              elevation: 1,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const TextField(
                  autofocus: true,
                  decoration: InputDecoration(border: InputBorder.none, hintText: 'Password'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            RoundCornerButton(
              buttonText: 'Unlock',
            ),
          ],
        ),
      ),
    );
  }
}
