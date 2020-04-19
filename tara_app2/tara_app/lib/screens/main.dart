import 'package:flutter/material.dart';
import 'package:tara_app/screens/authenticate/home_page.dart';
import 'package:tara_app/screens/authenticate/sign_in.dart';
import 'package:tara_app/screens/wrapper.dart';
import 'package:tara_app/screens/authenticate/flash.dart';

void main() { runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
          primaryColor: const Color(0xFF52759A),
          accentColor: const Color(0xFFE55934),
          canvasColor: const Color(0xFFFDF2DC),
          fontFamily: 'Roboto'
      ),
      initialRoute: '/',
routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => Flash(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/second': (context) => HomePage(),
}
));
}
