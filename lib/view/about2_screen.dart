
import 'package:apache/layout/cubits/cubit.dart';
import 'package:apache/layout/cubits/states.dart';
import 'package:apache/style/componants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AboutTwoScreen extends StatelessWidget {
  const AboutTwoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ApacheCubit, ApacheStates>(
      listener: (context, state){},
      builder: (context, state)
      {
        return Scaffold(
          appBar: appBar(context),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children:
              [
                Container(
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width/1.002,
                  child: const Center(
                    child: Image(
                      image: AssetImage('assets/image/onboarding_1.png'),
                      height: 250,
                      width: 260,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:
                        const [
                          Image(
                            image: AssetImage('assets/image/onboarding_1.png'),
                            height: 60.0,
                            width: 130.0,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/30,
                      ),
                      defaultText(
                        text: 'About Vera_New Cairo',
                        color: Colors.indigo,
                        size: 19.0,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          defaultText(
                            text: '''Santorini New Cairo The series of Santorini projects for Apache Investment and Urban Development continues and launches its latest residential projects in New Cairo...
To offer its residential customers a distinct residential project in line with modern life in light of advanced development.
Santorini New Cairo website The project is located in the center of Cairo, located in the center of Cairo, located in an area near Cairo Airport.
It carries the name of the customer and the features that many customers are looking for. general scheme A vital site in the fifth district, Bait Al Watan, plot (B77), New Cairo.''',
                            color: Colors.black,
                            size: 15.0,
                            weight: FontWeight.w500,
                            lines: 21,
                          ),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/28,
                      ),
                      defaultText(
                        text: 'Vera Services',
                        color: Colors.indigo,
                        size: 19.0,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/115,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        [
                          defaultText(
                            text: '- Curtain wall',
                            color: Colors.black45,
                            size: 10.0,
                            weight: FontWeight.w600,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height/90,
                          ),
                          defaultText(
                            text: '- Security and Guarding',
                            color: Colors.black45,
                            size: 10.0,
                            weight: FontWeight.w600,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height/90,
                          ),
                          defaultText(
                            text: '- Parking',
                            color: Colors.black45,
                            size: 10.0,
                            weight: FontWeight.w600,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height/90,
                          ),
                          defaultText(
                            text: '- Electronic Gate System',
                            color: Colors.black45,
                            size: 10.0,
                            weight: FontWeight.w600,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height/90,
                          ),
                          defaultText(
                            text: '- Gym',
                            color: Colors.black45,
                            size: 10.0,
                            weight: FontWeight.w600,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height/90,
                          ),
                          defaultText(
                            text: '- Parking',
                            color: Colors.black45,
                            size: 10.0,
                            weight: FontWeight.w600,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height/90,
                          ),
                          defaultText(
                            text: '- Electronic Elevator',
                            color: Colors.black45,
                            size: 10.0,
                            weight: FontWeight.w600,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height/90,
                          ),
                          defaultText(
                            text: '- Wifi',
                            color: Colors.black45,
                            size: 10.0,
                            weight: FontWeight.w600,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height/90,
                          ),
                          defaultText(
                            text: '- Private Gardens',
                            color: Colors.black45,
                            size: 10.0,
                            weight: FontWeight.w600,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height/90,
                          ),
                          defaultText(
                            text: '- Helicopter floors',
                            color: Colors.black45,
                            size: 10.0,
                            weight: FontWeight.w600,
                          ),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/35,
                      ),
                      defaultText(
                        text: 'Location',
                        color: Colors.indigo,
                        size: 19.0,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          defaultText(
                            text: 'Vera B77 - Watan Home - NewCairo - Egypt',
                            color: Colors.black54,
                            size: 13.0,
                            weight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/80,
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/49,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*2/5.6,
                            height: MediaQuery.of(context).size.height/17,
                            child: defaultButton(
                              function: (){},
                              child: defaultText(
                                text: ' WHATSAPP ',
                                color: Colors.green,
                              ),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 3,
                                side: const BorderSide(
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width/90,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width/4.2,
                            height: MediaQuery.of(context).size.height/17,
                            child: defaultButton(
                              function: (){},
                              child: defaultText(
                                text: ' CALL  ',
                                color: Colors.lightGreen,
                              ),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 3,
                                side: const BorderSide(
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width/90,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height/17,
                            width: MediaQuery.of(context).size.width/4,
                            child: defaultButton(
                              function: (){},
                              child: defaultText(
                                text: ' SHARE  ',
                                color: Colors.red,
                              ),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 3,
                                side: const BorderSide(
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width/35,
                          ),
                        ],
                      ),
                    ],
                  ),

                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
