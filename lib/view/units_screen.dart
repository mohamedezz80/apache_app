
import 'dart:ui';

import 'package:apache/layout/cubits/cubit.dart';
import 'package:apache/layout/cubits/states.dart';
import 'package:apache/models/detail_model.dart';
import 'package:apache/style/componants.dart';
import 'package:apache/view/unit10_screen.dart';
import 'package:apache/view/unit11_screen.dart';
import 'package:apache/view/unit12_screen.dart';
import 'package:apache/view/unit8_screen.dart';
import 'package:apache/view/unit9_screen.dart';
import 'package:apache/view/unitFive_screen.dart';
import 'package:apache/view/unitFoure_screen.dart';
import 'package:apache/view/unitOne_screen.dart';
import 'package:apache/view/unitSeven_screen.dart';
import 'package:apache/view/unitSix_screen.dart';
import 'package:apache/view/unitThree_screen.dart';
import 'package:apache/view/unitTwo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UnitsScreen extends StatelessWidget {
  UnitsScreen({Key key}) : super(key: key);

  List screens =
  const
  [
    UnitOneScreen(),
    UnitTwoScreen(),
    UnitThreeScreen(),
    UnitFourScreen(),
    UnitFiveScreen(),
    UnitSixScreen(),
    UnitSevenScreen(),
    UnitEightScreen(),
    UnitNineScreen(),
    UnitTenScreen(),
    UnitElevenScreen(),
    UnitTwelveScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ApacheCubit, ApacheStates>(
        listener: (context, state){},
        builder: (context, state)
        {
          return Scaffold(
            appBar: appBar(context),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Container(
                   // color: Colors.white,
                    height: MediaQuery.of(context).size.height/3,
                    child: defaultCarousalSlider(context),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height/150,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*2/3.7,
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => buildItem(details[index],context,index),
                      separatorBuilder: (context, index) => myDivider(),
                      itemCount: 12,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        );
  }
  Widget buildItem(DetailModel detail,context,index) =>  InkWell(
    onTap: ()
    {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => screens[index],
      ));
      // ignore: avoid_print
      print("GOOO");
    },
    child: Container(
      height: MediaQuery.of(context).size.height/3.5,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
          children:
          [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/3.7,
                  width: MediaQuery.of(context).size.width/2.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: defaultText(
                          text: detail.text1,
                          color: Colors.lightBlueAccent,
                          size: 16.0,
                          lines: 3,
                          overflow: TextOverflow.ellipsis,
                          weight: FontWeight.w900,
                        ),
                        width: MediaQuery.of(context).size.width/3,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/80,
                      ),
                      defaultText(
                        text: detail.text3,
                        color: Colors.black54,
                        lines: 2,
                        overflow: TextOverflow.ellipsis,
                        size: 12.5,
                        weight: FontWeight.w800,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/70,
                      ),
                      defaultText(
                        text: detail.text4,
                        color: Colors.green,
                        size: 16,
                        lines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/100,
                      ),
                      Container(
                        color: Colors.black,
                        height: 0.4,
                        width: 150,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/150,
                      ),
                      defaultText(
                        text: detail.text5,
                        size: 13.0,
                        lines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width/40,
            ),
            GestureDetector(
              onTap: ()
              {
               // ApacheCubit.get(context).screen;
               // ApacheCubit.get(context).changeScreen(0);
                //UnitsScreen();
                // ignore: avoid_print
                //print("goo");
              },
              child: Container(
                width: MediaQuery.of(context).size.width*3/5.68,
                height: MediaQuery.of(context).size.height/4,
                child: const Image(
                 image: AssetImage('assets/image/onboarding_1.png'),
                 fit: BoxFit.cover,
                    ),
              ),
            ),
          ],
        ),
    ),
  );
}
