import 'package:flutter/material.dart';
import 'package:tara_app/screens/authenticate/sign_in.dart';
import 'package:tara_app/services/auth.dart';


class Flash extends StatefulWidget {
  @override
  _FlashState createState() => _FlashState();
}

class _FlashState extends State<Flash> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;


Future navigateToSubPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
}

//MAKE THIS WHEN WE HAVE A SIGN UP PAGE
//Future navigateToSubPage(context) async {
  //Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
//}


_submit() {
  if (_formKey.currentState.validate()){
    _formKey.currentState.save();
    //Logging in the user w/firebase
    AuthService.login(_email, _password);
  }
}

  @override
  Widget build(BuildContext context) {
double Width = MediaQuery.of(context).size.width;
double Height = MediaQuery.of(context).size.height;

    
    return 
      Scaffold(
        resizeToAvoidBottomInset: false,
        body:
        SizedBox.expand( 
        child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,           
            children: <Widget>[
              Container(),
              Container(
                padding: EdgeInsets.only(top:100),
                child:
                  Text(
                          'TARA',
                          style: TextStyle(fontSize: 60, fontFamily: 'Roboto', color:Color(0xff374ABE))                          
                        ),
              ),
              Container(
                padding: EdgeInsets.only(top:20, bottom:150),
                child:
                  Text(
                          'Your Rehab, Your Way',
                          style: TextStyle(fontSize: 20, fontFamily: 'Roboto', color:Colors.blueGrey)                          
                        ),
              ),
          Container(
            padding: EdgeInsets.all(10),
            width: 240,
            child: RaisedButton(
    onPressed: () {
      navigateToSubPage(context);
    },
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    padding: EdgeInsets.all(0.0),
    child: Ink(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xff374ABE), Color(0xff64B6FF)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
        alignment: Alignment.center,
        child: Text(
          "Sign Up",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Roboto'
          ),
        ),
      ),
    ),
  ),
          )  ,


          //BUTTON2
           Container(
            padding: EdgeInsets.all(10),
            width: 240,
            child: RaisedButton(
    onPressed: () {navigateToSubPage(context);},
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    padding: EdgeInsets.all(0.0),
    child: Ink(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.white, Colors.white ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
        alignment: Alignment.center,
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontFamily: 'Roboto'
          ),
        ),
      ),
    ),
  ),
          )                     
  ],)
    
      )
  );
  
    
  }
}