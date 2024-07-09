import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hybkproject/onboarding2.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 200),
            const Image(image: AssetImage('assets/images/one.png')),
            SizedBox(height: 50),
            const Text(
              'Welcome to 10dollar!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            const Text(
              'Get ready to dive into the vibrant world of music! \nConnect with fellow musicians, showcase your talent, \nand earn rewards for your creativity.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 110),
            Padding(
              padding: const EdgeInsets.only(left: 280),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OnboardingTwo()));
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
