import 'package:apache/layout/apache_layout.dart';
import 'package:apache/style/componants.dart';
import 'package:apache/view/widget/auth/custom_initial_button.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
            CustomInitialButton(
              textButton: "Login",
              onPressed: (){},
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/40,
            ),
            CustomInitialButton(
              textButton: "Skip",
              onPressed: ()
              {
                navigateTo(context, const ApacheLayout());
              },
            ),
          ],
        ),
      ),
    );
  }
}
