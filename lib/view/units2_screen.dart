
import 'package:apache/layout/cubits/cubit.dart';
import 'package:apache/layout/cubits/states.dart';
import 'package:apache/models/detail2_model.dart';
import 'package:apache/style/componants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class UnitsTwoScreen extends StatelessWidget {
  const UnitsTwoScreen({Key key}) : super(key: key);

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
                Center(
                  child: defaultText(
                    text: 'Apache Investment and Urban Development',
                    size: 10.0,
                    weight: FontWeight.w900,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/100,
                ),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height/3,
                  child: defaultCarousalSlider(context),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/150,
                ),
                Container(
                  height: MediaQuery.of(context).size.height/1.955,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => buildItem(details[index],context),
                    separatorBuilder: (context, index) => myDivider(),
                    itemCount: 8,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildItem(DetailModel2 detail,context) =>  Container(
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
              height: MediaQuery.of(context).size.height/3.5,
              width: MediaQuery.of(context).size.width/2.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: defaultText(
                      text: detail.text1,
                      color: Colors.indigo,
                      size: 18.0,
                      lines: 3,
                      overflow: TextOverflow.ellipsis,
                      weight: FontWeight.w700,
                    ),
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height/80,
                  ),
                  Container(
                   // width: 150.0,
                    child: defaultText(
                      text: detail.text3,
                      color: Colors.black54,
                      lines: 2,
                      overflow: TextOverflow.ellipsis,
                      size: 12.5,
                      weight: FontWeight.w600,
                    ),
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
                    height: 0.5,
                    width: 160,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height/150,
                  ),
                  defaultText(
                    text: detail.text5,
                    size: 13.0,
                    lines: 2,
                    overflow: TextOverflow.ellipsis,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width/40,
        ),
        Container(
          width: MediaQuery.of(context).size.width*3/5.68,
          height: MediaQuery.of(context).size.height/4,
          child: const Image(
            image: AssetImage('assets/image/onboarding_1.png'),
            fit: BoxFit.cover,
          ),
        ),
      ],
    ),
  );

}
