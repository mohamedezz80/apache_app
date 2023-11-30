
import 'package:apache/layout/cubits/cubit.dart';
import 'package:apache/layout/cubits/states.dart';
import 'package:apache/style/componants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AboutScreen extends StatelessWidget {
  const AboutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context,) {
    return BlocConsumer<ApacheCubit, ApacheStates>(
      listener: (context, state){},
      builder: (context, state)
      {
        return Scaffold(
          appBar: appBar(context),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
                [
                Container(
                  height: MediaQuery.of(context).size.height/2.4,
                  child: const Image(
                    image: AssetImage('assets/image/onboarding_1.png'),
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height/10.5,
                          width: MediaQuery.of(context).size.width/0.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children:  const [
                              Image(
                                image: AssetImage('assets/image/onboarding_1.png'),
                                fit: BoxFit.cover,
                                width: 140,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/50,
                        ),
                        defaultText(
                          text: 'About Santorini',
                          color: Colors.lightBlue,
                          size: 19.0,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/28,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height/1.6,
                              child: defaultText(
                                text: '''The idea of designing the project (Santorini) according to the Greek architectural character and style, inspired by the island of Santorini, one of the picturesque islands in Greece, as this pattern appears through the architectural engineering form that is characterized by the resort and the colors that have been chosen to suit the Greek character. The semi-rural life was formed with modern style and technology that classifies the resort among the modern fourth generation (4G) projects, such as the new city of El Alamein, and in light of that we fourth generation (4G) projects, such as the show our project to the light through which we would like to provide the largest amount of enjoyment and leisure life for all resort owners and give wonderful investment opportunities to those who Desires it...''',
                                color: Colors.black,
                                size: 15.0,
                                weight: FontWeight.w500,
                                lines: 21,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/20,
                        ),
                        defaultText(
                          text: 'Santorini Services',
                          color: Colors.lightBlue,
                          size: 19.0,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/170,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                            [
                              Container(

                                child: Column(

                                  children:
                                  [
                                    defaultText(
                                        text: '- Public parking',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Football Stadium',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Private parking',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Football Stadium',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Kids Garden',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Football Stadium',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),

                                    defaultText(
                                      text: '- Wi-Fi',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Satellite Center',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Security Cameras',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Solar Energy',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Bar Pool',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Private Gardens Typical',
                                      color: Colors.black45,
                                      size: 9.5,
                                      lines: 2,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: 'Floors',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Bar Pool',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Medical Unit',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Pharmacy',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Electronic Gates',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                ),
                                height: MediaQuery.of(context).size.height/1.4,
                                width: 125.0,
                              ),
                              const Spacer(),
                              Container(
                                width: 142.0,
                                height: MediaQuery.of(context).size.height/1.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:
                                  [
                                    defaultText(
                                      text: '- Security and Guarding',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Mosque',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Football Stadium',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Landscape',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Green Wall',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- bus',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Shopping Mall',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Cafes',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Restaurants',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Cinema',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Hotel',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Football Stadium',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- hotel + services',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Bicycle Track',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Running Track',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Coverd Swimming pool',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: 'for ladies',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: 'Swimming pool (cold , hot)',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Aqua park',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Lagoon',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Club House',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Gym ( Men , Woman)',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                    defaultText(
                                      text: '- Parking Lot for Mall',
                                      color: Colors.black45,
                                      size: 9.5,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height/90,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/170,
                        ),
                        defaultText(
                          text: 'Location',
                          color: Colors.lightBlue,
                          size: 19.0,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/75,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            defaultText(
                              text: 'Kl 82 ALX - Matrouh Road - egypt',
                              color: Colors.black,
                              size: 13.0,
                              weight: FontWeight.w500,
                            ),
                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/75,
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
