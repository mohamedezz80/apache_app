
import 'package:apache/style/componants.dart';
import 'package:apache/style/constants.dart';
import 'package:apache/view/auth/initial_screen.dart';
import 'package:apache/view/onboarding/cubit.dart';
import 'package:apache/view/onboarding/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = OnBoardingCubit.get(context);
    return BlocConsumer<OnBoardingCubit, OnBoardingStates>(
      listener: (context, state) => {},
      builder: (context, state)
      {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height/13,
            child: MaterialButton(
              textColor: defaultColor,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: ()
              {
                if (cubit.currentPage == onBoardingList.length -1)
                {
                  navigateAndFinish(context, const InitialScreen());
                }
                  cubit.pageController.nextPage(
                    duration: const Duration(
                      milliseconds: 500,
                    ),
                    curve: Curves.fastLinearToSlowEaseIn,
                  );

              },
              child: const Text(
                  "Continue",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
