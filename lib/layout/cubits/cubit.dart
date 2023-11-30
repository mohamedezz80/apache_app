
import 'package:apache/layout/cubits/states.dart';
import 'package:apache/style/componants.dart';
import 'package:apache/view/apache_screen.dart';
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
import 'package:apache/view/units_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ApacheCubit extends Cubit<ApacheStates>
{
  ApacheCubit() : super(ApacheInitialState());
  static ApacheCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens =
      [
        const ApacheScreen(),
         UnitsScreen(),
      ];

  List<Widget> screen =
  [
    const UnitOneScreen(),
    const UnitTwoScreen(),
    const UnitThreeScreen(),
    const UnitFourScreen(),
    const UnitFiveScreen(),
    const UnitSixScreen(),
    const UnitSevenScreen(),
    const UnitEightScreen(),
    const UnitNineScreen(),
    const UnitTenScreen(),
    const UnitElevenScreen(),
    const UnitTwelveScreen(),
  ];

  void changeScreen(int index)
  {
    currentIndex = index;
  }

  void homeApache()
  {

    emit(ApacheSuccessHomeDataState());

  }

  void unit()
  {
    emit(UnitSuccessHomeDataState());
  }


    dynamic initialCameraPosition = const CameraPosition(
    target: LatLng(73.773927, -122.431297),
    zoom: 11.5,
  );
  GoogleMapController googleMapController;

  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: 'https//wa.me/${2001207253000}?text=Hello',
    );
    await launchUrl(launchUri);
  }
}
