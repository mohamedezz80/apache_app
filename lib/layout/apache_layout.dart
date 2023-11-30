
import 'package:apache/layout/cubits/cubit.dart';
import 'package:apache/layout/cubits/states.dart';
import 'package:apache/style/componants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApacheLayout extends StatelessWidget {
  const ApacheLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer<ApacheCubit, ApacheStates>(
      listener: (context, state) {},
      builder: (context, state)
      {
        var cubit = ApacheCubit.get(context);

          return Scaffold(
            backgroundColor: Colors.white,
            appBar: appBar(context),
            body: cubit.screens[cubit.currentIndex],

          );
      },
    );
  }


}
