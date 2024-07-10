import 'package:flutter/material.dart';
import 'package:hybkproject/forgot_password.dart';
import 'package:hybkproject/text_styles.dart';

class UploadImageNew extends StatelessWidget {
  const UploadImageNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/upload.png'))),
            ),
            SizedBox(height: 20),
            Text(
              textAlign: TextAlign.center,
              'Awesome! \nYour profile picture looks great.',
              style: AppTextStyle.body(size: 20),
            ),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: AppButton(
                onTap: () {},
                text: 'Upload Image',
              ),
            )
          ],
        ),
      ),
    );
  }
}
