import 'package:flutter/material.dart';
import 'package:hybkproject/appimage.dart';
import 'package:hybkproject/forgot_password.dart';
import 'package:hybkproject/text_styles.dart';
import 'package:hybkproject/upload_image_new.dart';

class UploadImage extends StatelessWidget {
  const UploadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200),
            Stack(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                ),
                Image(image: AssetImage(Appimage.pencil)),
              ],
            ),
            SizedBox(height: 40),
            Text(
              'Upload your profile picture',
              style: AppTextStyle.header.copyWith(fontSize: 26),
            ),
            SizedBox(height: 20),
            Text(
              textAlign: TextAlign.center,
              'Choose a profile image that represents you. \nThis will help others recognize you in \nthe 10dollar community.',
              style: AppTextStyle.body(),
            ),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: AppButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UploadImageNew()));
                },
              ),
            ),
            SizedBox(height: 40),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: 'Dont have image?', style: AppTextStyle.body()),
                  TextSpan(
                    text: 'Skip',
                    style: AppTextStyle.body(color: Color(0xff7DF9FF)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
