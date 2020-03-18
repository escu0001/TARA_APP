import 'package:flutter/material.dart';
import 'package:tara_app/services/auth.dart';


class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;


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
  Stack( 
    
    
    children: <Widget> [
      Column(
        children: <Widget> [
      Container(child:

      FittedBox(
        fit: BoxFit.fitHeight,
        alignment: Alignment.center,
      child:
      Image.asset('assets/images/friends.jpg' ,width: Width, height: Height, fit: BoxFit.fitHeight),
      
      ),
      ),
        ]),
      Align(
        alignment: FractionalOffset.bottomCenter,     
        child:       
      Container(
        height: 300,       
            decoration: BoxDecoration(              
            color: Color.fromRGBO(140,174,104, 0.5),                  
      )      
      ) 
        ),
        Positioned(
          bottom: 200,
          
          child:
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical:10
            ),
            child:
            TextFormField(
              decoration: InputDecoration(labelText:'Email'),
              validator: (input)=>!input.contains('@')
              ?'Enter a valid email'
              :null,
              onSaved: (input)=> _email = input) )
        )
     ] )
    
    
  );
  
    
  }
}

/* Code for input field to look pretty af
TextFormField(
              decoration: InputDecoration(labelText:'Email', fillColor: Colors.orange, 
              border: new 
              OutlineInputBorder(borderRadius: 
              new BorderRadius.circular(25), 
              borderSide: new BorderSide(),),
              //fillColor = Colors.green)
              ),
              validator: (input)=>!input.contains('@')
              ?'Enter a valid email'
              :null,
              onSaved: (input)=> _email = input) ) */