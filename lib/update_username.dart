import 'package:flutter/material.dart';
import 'package:hybkproject/reset.dart';

class UpdateUsername extends StatelessWidget {
  const UpdateUsername({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            const Image(image: AssetImage('assets/images/forgotpassword.png')),
            const Padding(
              padding: EdgeInsets.only(right: 40),
              child: Text(
                'Verify Email With OTP?',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Please enter the email address associated with your \naccount. We will send you a OTP to reset your password.',
                style: TextStyle(fontSize: 13),
              ),
            ),
            SizedBox(height: 60),
            const Padding(
              padding: EdgeInsets.only(right: 260),
              child: Text(
                'Six OTP',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 320,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    contentPadding: EdgeInsets.only(right: 20),
                    fillColor: Color(0xffD9D9D9),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            SizedBox(height: 150),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResetPassword()));
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
                  TextSpan(text: 'Don’t receive OTP?'),
                  TextSpan(
                    text: 'Resend',
                    style: TextStyle(color: Color(0xff7DF9FF)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
