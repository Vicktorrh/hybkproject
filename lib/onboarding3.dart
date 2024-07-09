import 'package:flutter/material.dart';
import 'package:hybkproject/onboarding4.dart';

class OnboardingThree extends StatelessWidget {
  const OnboardingThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 250),
            const Image(image: AssetImage('assets/images/three.png')),
            SizedBox(height: 50),
            const Text(
              'Engage with Your Audience',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            const Text(
              'Receive real-time feedback from your peers. \nUpload videos for voting and watch your popularity soar. \nWin weekly prizes for being the top-voted artist!',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 110),
            Padding(
              padding: const EdgeInsets.only(left: 280),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OnboardingFour()));
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      color: Color(0xff7DF9FF), shape: BoxShape.circle),
                  child: Icon(Icons.arrow_forward),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
