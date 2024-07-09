import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hybkproject/onboarding3.dart';

class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 160),
            const Image(image: AssetImage('assets/images/two.png')),
            SizedBox(height: 50),
            const Text(
              'Discover & Share Your \nMusic',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            const Text(
              'Explore a diverse range of musical styles and genres. \nShare your own tracks, videos, and updates \nwith the community to gain exposure and feedback.',
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
                          builder: (context) => OnboardingThree()));
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
