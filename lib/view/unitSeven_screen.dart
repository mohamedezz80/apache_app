
// ignore_for_file: file_names

import 'package:apache/layout/cubits/cubit.dart';
import 'package:apache/layout/cubits/states.dart';
import 'package:apache/style/componants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:url_launcher/url_launcher.dart';


class UnitSevenScreen extends StatelessWidget {
  const UnitSevenScreen({Key key}) : super(key: key);

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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children:
              [
                Container(
                  height: MediaQuery.of(context).size.height/3.5,
                  child: const Image(
                    image: AssetImage('assets/image/onboarding_1.png'),
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:
                    [
                      defaultText(
                        text: "Typical Chalet with garden",
                        color: Colors.lightBlueAccent,
                        size: 22.0,
                        weight: FontWeight.w900,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/100,
                      ),
                      defaultText(
                        text: '40 m2 ',
                        size: 13.0,
                        weight: FontWeight.w500,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/100,
                      ),
                      Container(
                        color: Colors.black,
                        height: 1.0,
                        width: 200,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/100,
                      ),

                      defaultText(
                        text: 'EG 488,738 Start : ',
                        size: 17.0,
                        color: Colors.green,
                        weight: FontWeight.w600,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/80,
                      ),
                      defaultText(
                        text: 'DETAILS :',
                        size: 13.0,
                        color: Colors.black54,
                        weight: FontWeight.w500,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/55,
                      ),
                    ],
                  ),

                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: defaultText(
                        text: '''You own your unit in a down payment of 30,000 and equal installment over 7 years without interest, and we offer you a variety of units with different sizes (ground floor with garden - chalet room and reception - chalet two rooms) with various areas of 45 m2 and center 2, book your chalet in installments in the first Greek in Egypt ''',
                        size: 13.0,
                        color: Colors.black,
                        weight: FontWeight.w400,
                        lines: 7,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height/110,
                ),
                defaultText(
                  text: 'MORE THAN 30 SERVICES     ',
                  size: 13.0,
                  color: Colors.black54,
                  weight: FontWeight.w700,
                ),
                Container(
                  height: MediaQuery.of(context).size.height/115,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Container(
                        height: MediaQuery.of(context).size.height/1.4,
                        width: 125.0,
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/500,
                ),
                Container(
                  color: Colors.black,
                  height: 1.0,
                  width: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: defaultText(
                      text: 'Location',
                      color: Colors.black,
                      size: 16.0,
                      weight: FontWeight.w600
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/500,
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Row(
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
                ),
                Container(
                  height: MediaQuery.of(context).size.height/120,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/40,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*2/5.6,
                        height: MediaQuery.of(context).size.height/17,
                        child: defaultButton(
                          function: () async
                          {
                            const url = "whatsapp://send?phone=+201207253000";
                            if(await canLaunch(url)) {
                              await launch(url);
                            }
                            else {
                              throw'Could not launch $url';
                            }
                          },
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
                          function: () async
                          {
                            const url = "tel:+2001207254000";
                            if(await canLaunch(url)) {
                              await launch(url);
                            }
                            else {
                              throw'Could not launch $url';
                            }
                          },
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
                          function: () async
                          {
                            const urlShare = "https://play.google.com/store/apps/details?id=com.apache.apacheforinvestment";
                            await FlutterShare.share(
                              title: "Apachee Aplication",
                              linkUrl: urlShare,
                            );
                          },
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
                        width: MediaQuery.of(context).size.width/44,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/30,
                ),
                Center(
                  child: Column(
                    children: [
                      defaultText(
                        text: 'OTHER CHALETS',
                        color: Colors.black,
                        size: 12.5,
                        weight: FontWeight.w600,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: defaultCarousalSlider(context),
                      ),
                      defaultText(
                        text: 'Santorini Resort North Coast',
                        color: Colors.black,
                        size: 12.5,
                        weight: FontWeight.w400,
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
