import 'package:flutter/material.dart';
import 'package:tara_app/screens/authenticate/authenticate.dart';
import 'package:tara_app/screens/authenticate/sign_in.dart';
import 'package:tara_app/screens/home/home.dart';
import 'package:tara_app/screens/authenticate/welcome.dart';
import 'package:tara_app/screens/authenticate/flash.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return either home or authenticate widget
    return Container(
      child: Flash(),
    );

  }
}