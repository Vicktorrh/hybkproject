import 'package:flutter/material.dart';
import 'package:hybkproject/login.dart';

class OnboardingFour extends StatelessWidget {
  const OnboardingFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 250),
            const Image(image: AssetImage('assets/images/four.png')),
            SizedBox(height: 50),
            const Text(
              'Stake Your Claim',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            const Text(
              'Put your faith in your fellow musicians! Stake on\nvideos you believe in, and earn rewards when they succeed. \nBe part of the excitement and support the community.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 110),
            Padding(
              padding: const EdgeInsets.only(left: 280),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
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
