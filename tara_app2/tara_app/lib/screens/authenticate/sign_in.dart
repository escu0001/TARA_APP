import 'package:flutter/material.dart';
import 'package:tara_app/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

        
      body: 
      SafeArea(
        child:
      Stack(
        children: <Widget>[
              Container(
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(image: NetworkImage('https://i.postimg.cc/x1FV4TjV/21343.jpg'), fit: BoxFit.fill)
              )
              ),

Positioned(top: 50, left: 30,
child: Text('Login', style: TextStyle(fontSize: 60, color: Colors.white ),),
),

Container(
  child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[

Container(
  margin: const EdgeInsets.all(12.0),
  child:
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Email',
          ),
        ),
),

Container(
  margin: const EdgeInsets.all(12.0),
child:
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
        )
),
  ]),
),
Positioned(
  bottom:200, right: 40,
  child:
        RaisedButton(
          onPressed: () {
              
            },
          child: 
          Text('Go'),
          color: Colors.red[100]
          )
),
Positioned(
  bottom: 20,
  child: 
  RaisedButton(
    onPressed: () async{
dynamic result = await _auth.signInAnon();
    if (result ==null) {
      print('Error Signing In');}
      else {print('Signed in');
      print(result.uid);
      }
    },
    child: Text('Sign In Anonymously') ,)
  )
    ])
    ));
    
  }
}