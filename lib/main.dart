
import 'package:apache/bloc_observer/bloc_observer.dart';
import 'package:apache/layout/cubits/cubit.dart';
import 'package:apache/view/onboarding/cubit.dart';
import 'package:apache/view/onboarding/on_boarding.dart';
import 'package:apache/view/onboarding/onboarding_screen.dart';
import 'package:apache/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main()
{
  BlocOverrides.runZoned(
        () {
      // Use cubits...
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:
      [
        BlocProvider(
            create: (context) =>
            ApacheCubit() ..unit() ..homeApache()..initialCameraPosition..googleMapController,
        ),
        BlocProvider(
          create: (context) =>
          OnBoardingCubit() ..isLast,
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnBoardingScreen(),
      ),
    );
  }
}

