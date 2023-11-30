
import 'package:apache/style/constants.dart';
import 'package:apache/view/onboarding/cubit.dart';
import 'package:apache/view/onboarding/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = OnBoardingCubit.get(context);
    return BlocConsumer< OnBoardingCubit, OnBoardingStates>(
      listener: (context, state) => {},
      builder: (context, state)
      {
        return PageView.builder(
          itemCount: onBoardingList.length,
          controller: cubit.pageController,
          onPageChanged: (int index)
          {
            cubit.currentPage = index;
            // if (index == onBoardingList.length - 1) {
            //   cubit.isLast = true;
            //   print('Last');
            // } else {
            //   cubit.isLast = false;
            //   print('Not Last');
            // }
          },
          itemBuilder: (context, index) => Column(
            children:
            [
              Image.asset(
                onBoardingList[index].image,
                width: 200,
                height: 250,
                fit: BoxFit.fill,
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height/15,
              // ),
              const Spacer(),
              Text(
                onBoardingList[index].title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: defaultColor,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/35,
              ),
              Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Text(
                    onBoardingList[index].body,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      height: 1.5,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                  )),
            ],
          ),
        );
      },
    );
  }
}
