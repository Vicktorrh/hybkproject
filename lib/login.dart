import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hybkproject/forgot_password.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            const Image(image: AssetImage('assets/images/login.png')),
            const Padding(
              padding: EdgeInsets.only(right: 80),
              child: Text(
                'Welcome Back',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
            const Text(
                'Sign in to access your account and explore \nthe world of music!'),
            SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(right: 250),
              child: Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 300,
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
            SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(right: 230),
              child: Text(
                'Password',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility),
                    contentPadding: EdgeInsets.only(right: 20),
                    fillColor: Color(0xffD9D9D9),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 180),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPassword()));
                },
                child: Text(
                  'forgot password?',
                  style: TextStyle(color: Color(0xff7DF9FF)),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
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
            SizedBox(height: 40),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Don’t have an account?'),
                  TextSpan(
                    text: 'Sign Up',
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
