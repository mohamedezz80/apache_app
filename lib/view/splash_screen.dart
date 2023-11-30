
import 'dart:async';

import 'package:apache/layout/apache_layout.dart';
import 'package:apache/style/componants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  // ignore: must_call_super
  void initState()
  {
    super.initState();
    Timer(
        const Duration(seconds: 3,),()
    {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(
          builder: (_) => const ApacheLayout()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height/9,
                  ),
                child: Container(
                  child: Image.asset(
                    'assets/image/onboarding_1.png',
                    height: MediaQuery.of(context).size.height /10,
                    width: MediaQuery.of(context).size.width / 2.75,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height /4,
              ),
              Center(
                child: Image.asset(
                  'assets/image/onboarding_1.png',
                  height: MediaQuery.of(context).size.height / 10,
                  width: MediaQuery.of(context).size.width / 2.25,
                  fit: BoxFit.cover,
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height/50,
                ),
                child: defaultText(
                  text: "apache.com.eg",
                  size: 12,
                  color: Colors.black,
                  weight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
