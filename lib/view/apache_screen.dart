
import 'package:apache/layout/cubits/cubit.dart';
import 'package:apache/layout/cubits/states.dart';
import 'package:apache/style/componants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:url_launcher/url_launcher.dart';

class ApacheScreen extends StatelessWidget {
  const ApacheScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ApacheCubit, ApacheStates>(
      listener: (context, state){},
      builder: (context, state)
      {
        return Conditional.single(
          context: context,
          conditionBuilder: (context) => true,
          widgetBuilder: (context) => builderWidget(context),
          fallbackBuilder: (context) => const Center(child: CircularProgressIndicator(),),
        );
      },
        );
  }

  Widget builderWidget (context) => SingleChildScrollView(
   // physics: const BouncingScrollPhysics(),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
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
            height: MediaQuery.of(context).size.height/80,
          ),
          defaultCarousalSlider(context),
          Container(
            height: MediaQuery.of(context).size.height/35,
          ),
          Center(
            child: defaultText(
              text: 'Our Projects',
              size: 18.0,
              weight: FontWeight.w500,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/45,
          ),
          defaultText(
            text: 'Santorini Resort_North Coast',
            size: 18.0,
            weight: FontWeight.w500,
            color2: Colors.black12,
          ),
          Container(
            height: MediaQuery.of(context).size.height/120,
          ),
          defaultRow(context),
          Container(
            height: MediaQuery.of(context).size.height*2/150,
          ),
          Container(
            height: MediaQuery.of(context).size.height*2/6,
            child: defaultText(
                text: '''The first service resort Greek architecture. A privileged location at 82 km (before the road) in front of the Tulip Hotel. you can find many services and features in Santorini. (Unique architectural style, car garage, 8 swimming pools and an Aqua Park, an indoor swimming pool for women, an artificial lake, a hotel a shopping mall and shopping areas, children's areas, a cinema and theater, a soccer field, a mosque) and more ...''',
              size: 15.0,
              lines: 11,
              weight: FontWeight.w400,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/25,
          ),
          defaultText(
            text: 'Vera _ New Cairo',
            size: 18.0,
            color2: Colors.black12,
          ),
          defaultRow2(context),
          Container(
            height: MediaQuery.of(context).size.height/60,
          ),
          Container(
            height: MediaQuery.of(context).size.height*2/6,
            child: defaultText(
              text: '''The first service resort Greek architecture. A privileged location at 82 km (before the road) in front of the Tulip Hotel. you can find many services and features in Santorini. (Unique architectural style, car garage, 8 swimming pools and an Aqua Park, an indoor swimming pool for women, an artificial lake, a hotel a shopping mall and shopping areas, children's areas, a cinema and theater, a soccer field, a mosque) and more ...''',
              size: 15.0,
              lines: 11,
              weight: FontWeight.w400,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/80,
          ),
          Container(
            height: MediaQuery.of(context).size.height/5,
            child: const Center(
              child: Image(
                image: AssetImage('assets/image/onboarding_1.png'),
                height: 120,
                width: 120.0,
                fit: BoxFit.cover,

              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/380,
          ),
          defaultText(
            text: '''Apache Investment and Urban Development is an Egyptian joint stock company, subject to Investment Law No. 159 of 1981, and was established to be one of the largest real estate developers in its field, which includes various residential units and complexes in addition to tourism and coastal projects

            Our mission is not only to build appropriate modern housing that keeps pace with the latest global architectural developments, but also to the necessity to participate in the intense race towards creating modern residential communities that match what we see around the developed world. Egypt is on the threshold of a new stage in the field of architecture, which is the stage of exporting

          distinguished real estate

          This is our first goal...and of course not the last, we aspire to be at the forefront of always looking for the best in our field of work, to be an addition worthy of the trust of our customers' circle, which is increasing every day thanks to our continuous effort to create a (life system) that every Egyptian deserves regardless of his position on the social ladder..''',
            size: 10.0,
            weight: FontWeight.w300,
            lines: 230,
            align: TextAlign.center,
          ),
          Container(
            height: MediaQuery.of(context).size.height/15,
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width/35,
              ),
              Container(
                width: MediaQuery.of(context).size.width*2/5.5,
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
                width: MediaQuery.of(context).size.width/4,
                height: MediaQuery.of(context).size.height/17,
                child: defaultButton(
                  function: () async
                  {
                    const url = "tel:+2001207253000";
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
                width: MediaQuery.of(context).size.width/35,
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height/15,
          ),
          Center(
            child: Column(
              children: [
                defaultText(
                  text: 'Copy Right _ Apache',
                  size: 10.0,
                  weight: FontWeight.w600,
                  color: Colors.black54,
                ),
                defaultText(
                  text: '6 4444 252 02+',
                  size: 10.0,
                  weight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ],
            ),

          ),
          Container(
            height: MediaQuery.of(context).size.height/40,
          ),
        ],
      ),
    ),
  );
}
