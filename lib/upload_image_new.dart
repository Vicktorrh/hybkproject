import 'package:flutter/material.dart';

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
            const Text(
              textAlign: TextAlign.center,
              'Awesome! \nYour profile picture looks great.',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 100),
            Container(
              alignment: Alignment.center,
              height: 45,
              width: 300,
              decoration: BoxDecoration(
                  color: Color(0xff7DF9FF),
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                'Upload Image',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
