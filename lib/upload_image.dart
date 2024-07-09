import 'package:flutter/material.dart';
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
            Container(
              height: 150,
              width: 150,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            ),
            SizedBox(height: 40),
            const Text(
              'Upload your profile picture',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            const Text(
                textAlign: TextAlign.center,
                'Choose a profile image that represents you. \nThis will help others recognize you in \nthe 10dollar community.'),
            SizedBox(height: 100),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UploadImageNew()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 45,
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0xff7DF9FF),
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Continue',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 40),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Dont have image?'),
                  TextSpan(
                    text: 'Skip',
                    style: TextStyle(color: Color(0xff7DF9FF)),
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
