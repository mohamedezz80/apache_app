
import 'package:apache/view/widget/onboarding/custom_button.dart';
import 'package:apache/view/widget/onboarding/custom_slider.dart';
import 'package:apache/view/widget/onboarding/dot_controller.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            children: [
              const CustomSlider(),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:
                [
                  const DotController(),
                  const Spacer(),
                  const CustomButton(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/100,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
