import 'package:flutter/material.dart';
import 'package:tara_app/main.dart';
import 'package:tara_app/services/auth.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:tara_app/screens/home/home.dart';
import 'package:tara_app/screens/authenticate/sliding_cards.dart';
import 'package:tara_app/screens/authenticate/home_page.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

 final _formKey = GlobalKey<FormState>();
  String _email, _password;


_submit() {
  if (_formKey.currentState.validate()){
    _formKey.currentState.save();
    //Logging in the user w/firebase
    AuthService.login(_email, _password);
    print(_email );
  }
}

  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
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
                padding: EdgeInsets.symmetric(vertical:50),
                child:
                  Text(
                          'TARA',
                          style: TextStyle(fontSize: 60, fontFamily: 'Roboto', color:Color(0xff374ABE))                          
                        ),
              ),


              Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),                
              child:
               TextFormField(
              decoration: InputDecoration(labelText:'Email', fillColor: Colors.orange, 
              border: new 
              OutlineInputBorder(borderRadius: 
              new BorderRadius.circular(25), 
              borderSide: new BorderSide(),),
              //fillColor = Colors.green
              ),
              validator: (input)=>!input.contains('@')
              ?'Enter a valid email'
              :null,
              onSaved: (input)=> _email = input) 
              ),
              
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child:
               TextFormField(
                 obscureText: true,
              decoration: InputDecoration(labelText:'Password', fillColor: Colors.orange, 
              border: new 
              OutlineInputBorder(borderRadius: 
              new BorderRadius.circular(25), 
              borderSide: new BorderSide(),),
              //fillColor = Colors.green
              ),
              validator: (input)=> input.length <= 6
              ?'Enter a valid email'
              :null,
              onSaved: (input)=> _password = input) 
              ),
              
              
          Container(
            padding: EdgeInsets.all(10),
            width: 240,
            child: RaisedButton(
    onPressed: () {
      _submit();
      
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
          "Login",
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
Container(
  child: 
  Text('Forgot Password?')
)
,

          //SOCIAL MEDIA BUTTONS
           Container(
            padding: EdgeInsets.only(top: 100, bottom: 20),
            alignment: FractionalOffset.bottomCenter,
                child:
                Column(
                  children: <Widget> [
                    
                      SizedBox(
                      width: 260,
                      child:
                              FacebookSignInButton(
                                
                    onPressed: () {Navigator.push(

context, MaterialPageRoute(builder:(context)=>Dashboard())


                    ); },    
                  )), 
                   SizedBox(
                      width: 260, 
                      child:
                              GoogleSignInButton(
                    onPressed: () {Navigator.push(

context, MaterialPageRoute(builder:(context)=>HomePage())


                    ); },  
                              )
                  ),
                                
                  ] )  )                   
                  ],)
    
      )
  );
  
    
  }
}