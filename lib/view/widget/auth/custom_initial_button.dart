
import 'dart:io';

import 'package:apache/style/constants.dart';
import 'package:flutter/material.dart';

class CustomInitialButton extends StatelessWidget {

  final String textButton;
  final void Function()  onPressed;
  const CustomInitialButton({
    Key key, this.textButton,
    this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width/2,
        height: MediaQuery.of(context).size.height/14,
        child: MaterialButton(
          color: Colors.white,
          textColor: defaultColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: onPressed,
          child: Text(
            textButton,
            style: const TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
