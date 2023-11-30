
import 'package:apache/view/onboarding/state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingCubit extends Cubit<OnBoardingStates>
{
  OnBoardingCubit() : super(OnBoardingInitialState());
  static OnBoardingCubit get(context) => BlocProvider.of(context);

  PageController pageController;
  int currentPage = 0;
  bool isLast = false;

  onPageChanged(int index)
  {
    currentPage = index;
  }
}