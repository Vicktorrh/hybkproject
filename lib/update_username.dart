import 'package:flutter/material.dart';
import 'package:hybkproject/reset.dart';
import 'package:hybkproject/upload_image.dart';

class UpdateUsername extends StatelessWidget {
  const UpdateUsername({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 80),
              const Image(
                  image: AssetImage('assets/images/forgotpassword.png')),
              const Padding(
                padding: EdgeInsets.only(right: 40),
                child: Text(
                  'Lets create your musical \nidentity',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  'Choose a unique username to get started. \nThis will be your identity in the 10dollar community.',
                  style: TextStyle(fontSize: 13),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 60),
              const Padding(
                padding: EdgeInsets.only(right: 240),
                child: Text(
                  'Username',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 320,
                child: TextField(
                  maxLength: 15,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
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
                      MaterialPageRoute(builder: (context) => UploadImage()));
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
            ],
          ),
        ),
      ),
    );
  }
}
