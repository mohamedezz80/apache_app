
import 'package:apache/style/constants.dart';
import 'package:apache/view/onboarding/cubit.dart';
import 'package:apache/view/onboarding/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotController extends StatelessWidget {
  const DotController({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = OnBoardingCubit.get(context);
    return BlocConsumer<OnBoardingCubit, OnBoardingStates>(
      listener: (context, state) => {},
      builder: (context, state)
      {
        return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              ... List.generate(
                onBoardingList.length,
                  (index) => buildDot(index, context),
                // count: onBoardingList.length,
                // controller: cubit.pageController,
                // effect: const ExpandingDotsEffect(
                //   dotColor: Colors.grey,
                //   activeDotColor: defaultColor,
                //   dotHeight: 5,
                //   dotWidth: 10,
                //   spacing: 10,
                //   expansionFactor: 4,
                // ),
              ),
            ],
          ),
        );
      },
    );
  }
  Container buildDot(int index, BuildContext context)
  {
    return Container(
      width:
      OnBoardingCubit.get(context).currentPage == index? 30 : 10,
      height: 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: defaultColor,
      ),
    );
  }
}
