
import 'package:apache/style/constants.dart';
import 'package:apache/view/about2_screen.dart';
import 'package:apache/view/about_screen.dart';
import 'package:apache/view/google_maps1.dart';
import 'package:apache/view/google_maps2.dart';
import 'package:apache/view/google_maps3.dart';
import 'package:apache/view/units2_screen.dart';
import 'package:apache/view/units_screen.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Widget defaultText({
  @required String text,
  Color color = defaultColor,
  Color color2 = Colors.white,
  FontWeight weight = FontWeight.bold,
  double size = 15.0,
  int lines = 1,
  TextOverflow overflow = TextOverflow.ellipsis,
  String fontFamily = 'Milonga',
  TextAlign align = TextAlign.start,
}) => Text(
  text,
  overflow: overflow,
  maxLines: lines,
  textAlign: align,
  style: TextStyle(
    color: color,
    fontWeight: weight,
    fontSize: size,
    fontFamily: fontFamily,
    backgroundColor: color2,
  ),
);

Widget defaultButton({
  @required Function function,
  @required Widget child,
  ButtonStyle style,
}) => OutlinedButton(
  onPressed: () => function(),
  child: child,
  style: style,
);

Widget defaultIconButton ({
  FaIcon icon =  const FaIcon(FontAwesomeIcons.intercom),
  @required Function function,
  Color color = Colors.black54,
}) =>
    IconButton(
      onPressed: () => function,
      icon: icon,
      color: color,
      iconSize: 35,
    );

Widget defaultCarousalSlider(context) => Container(
  height: MediaQuery.of(context).size.height/3,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
  ),
  child: ClipRRect(
    borderRadius: const BorderRadius.all(Radius.circular(20.0)),
    child: CarouselSlider(
      items:
      const [
        Image(
          image: AssetImage('assets/image/onboarding_1.png'),
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ].toList(),
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height/3,
        initialPage: 0,
        viewportFraction: 1.0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayCurve: Curves.fastOutSlowIn,
        scrollDirection: Axis.horizontal,
      ),
    ),
  ),
);


Widget myDivider() => const Padding(
  padding: EdgeInsets.symmetric(
    horizontal: 10,
  ),
  child: Divider(
    height: 0.8,
    color: Colors.black12,
  )
);

AppBar appBar(context) => AppBar(
  backgroundColor: Colors.white,
  elevation: 0.0,
  actions: [
    Container(
      width: MediaQuery.of(context).size.width/1.16,
      child: Row(
        children: [
          IconButton(
            onPressed: ()
              {
                launchUrl("https://mobile.twitter.com/apache_urban");
              },
            icon: const FaIcon(FontAwesomeIcons.twitter,
                color: Colors.black54,
                size: 35,
              ),
          ),
          const SizedBox(
            width: 5.0,
          ),
          IconButton(
            onPressed: ()
            {
              launchUrl("https://www.instagram.com/accounts/login/?next=/santorini.resort/");
            },
            icon: const FaIcon(FontAwesomeIcons.instagram,
              color: Colors.black54,
              size: 35,
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
          IconButton(
            onPressed: ()
            {
              launchUrl("https://m.facebook.com/apache.development/");
            },
            icon: const FaIcon(FontAwesomeIcons.facebookF,
              color: Colors.black54,
              size: 35,
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
          IconButton(
            onPressed: ()
            {
              navigateTo(context, const GoogleMaps1());
            },
            icon: const FaIcon(FontAwesomeIcons.mapMarkerAlt,
              color: Colors.black54,
              size: 35,
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
          IconButton(
            onPressed: ()
            {
              launchUrl("https://apache.com.eg/");

            },
            icon: const FaIcon(FontAwesomeIcons.atom,
              color: Colors.black54,
              size: 35,
            ),
          ),
        ],
      ),
    ),
  ],
);

void navigateTo(BuildContext context,  widget) => Navigator.of(context).push(
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);

void navigateAndFinish( context, widget) => Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
      (route) => false,
);

Row defaultRow(context) => Row(
  children: [
    Container(
      height: MediaQuery.of(context).size.height/3.5,
      width: 240.0,
      child: CarouselSlider(
        items:
         [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: Image(
                image: AssetImage('assets/image/onboarding_1.png'),
                width: 240.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ].toList(),
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height/3.5,
          initialPage: 0,
          viewportFraction: 1.0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(seconds: 1),
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollDirection: Axis.horizontal,
        ),
      ),

    ),
    Container(
      width: MediaQuery.of(context).size.width/40,
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width/4,
          height: MediaQuery.of(context).size.height/18,
          child: defaultButton(
            function: ()
            {
              Navigator.of(context).push(
                  MaterialPageRoute(
                  builder: (context)=>  UnitsScreen()),
              );
            },
            child: defaultText(
              text: 'UNIT',
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 2,
              side: const BorderSide(
                color: Colors.black38,
              ),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height/70,
        ),
        Container(
          width: MediaQuery.of(context).size.width/4,
          height: MediaQuery.of(context).size.height/18,
          child: defaultButton(
            function: ()
            {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context)=> const AboutScreen()),
              );
            },
            child: defaultText(
              text: 'ABOUT',
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 2,
              side: const BorderSide(
                color: Colors.black38,
              ),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height/70,
        ),
        Container(
          width: MediaQuery.of(context).size.width/4,
          height: MediaQuery.of(context).size.height/18,
          child: defaultButton(
            function: ()
            {
              navigateTo(context, const GoogleMaps2());
            },
            child: defaultText(
              text: 'MAP',
            ),style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white,
            elevation: 2,
            side: const BorderSide(
              color: Colors.black38,
            ),
          ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height/70,
        ),
        Container(
          width: MediaQuery.of(context).size.width/4,
          height: MediaQuery.of(context).size.height/18,
          child: defaultButton(
            function: (){
              launchUrl("https://apache.com.eg/live/");
            },
            child: defaultText(
              text: 'SITE',
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 2,
              side: const BorderSide(
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ],
    ),
  ],
);
Row defaultRow2(context) => Row(
  children: [
    Container(
      height: MediaQuery.of(context).size.height/3.5,
      width: 240.0,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        child: CarouselSlider(
          items:
          const [
            Image(
              image: AssetImage('assets/image/onboarding_1.png'),
              width: 240.0,
              fit: BoxFit.cover,
            ),
          ].toList(),
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height/3.5,
            initialPage: 0,
            viewportFraction: 1.0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(seconds: 1),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,

          ),
        ),
      ),
    ),
    Container(
      width: MediaQuery.of(context).size.width/40,
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width/4,
          height: MediaQuery.of(context).size.height/18,
          child: defaultButton(
            function: ()
            {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context)=> const UnitsTwoScreen()),
              );
            },
            child: defaultText(
              text: 'UNIT',
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 2,
              side: const BorderSide(
                color: Colors.black38,
              ),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height/70,
        ),
        Container(
          width: MediaQuery.of(context).size.width/4,
          height: MediaQuery.of(context).size.height/18,
          child: defaultButton(
            function: ()
            {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context)=> const AboutTwoScreen()),
              );
            },
            child: defaultText(
              text: 'ABOUT',
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 2,
              side: const BorderSide(
                color: Colors.black38,
              ),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height/70,
        ),
        Container(
          width: MediaQuery.of(context).size.width/4,
          height: MediaQuery.of(context).size.height/18,
          child: defaultButton(
            function: ()
            {
              navigateTo(context, const GoogleMaps3());
            },
            child: defaultText(
              text: 'MAP',
            ),style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white,
            elevation: 2,
            side: const BorderSide(
              color: Colors.black38,
            ),
          ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height/70,
        ),
        Container(
          width: MediaQuery.of(context).size.width/4,
          height: MediaQuery.of(context).size.height/18,
          child: defaultButton(
            function: ()
            {
              launchUrl("https://apache.com.eg/property/%D8%B3%D8%A7%D9%86%D8%AA%D9%88%D8%B1%D9%8A%D9%86%D9%8A-%D8%A7%D9%84%D9%82%D8%A7%D9%87%D8%B1%D8%A9-%D8%A7%D9%84%D8%AC%D8%AF%D9%8A%D8%AF%D8%A9/");
            },
            child: defaultText(
              text: 'SITE',
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 2,
              side: const BorderSide(
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ],
    ),
  ],
);

launchUrl(url) async {
  try {
    await canLaunch(url)
        ? await launch(
      url,
      forceWebView: true,
      enableJavaScript: true,
    )
        : throw ("valid");
  // ignore: empty_catches
  } catch (e) {}
}

