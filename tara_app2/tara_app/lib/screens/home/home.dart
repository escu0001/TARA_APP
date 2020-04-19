import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      Text('Home')
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: 
      SafeArea(
        child:
        Stack(
          children: <Widget> [
        ListView(

          children: <Widget>[

            Container(
              margin: const EdgeInsets.only(bottom: 50, top: 30, left: 10),
              child:
            Text('Welcome Back', //replace this with some name variable eventually
            style: TextStyle(fontSize: 30, color: Colors.black, fontFamily: 'Roboto') ),
            ),

        Container(
          margin: const EdgeInsets.all(12.0),
          decoration: new BoxDecoration(
          
            border: Border.all(color: Colors.blue, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(5)),
             gradient: LinearGradient(colors: [Color(0xff374ABE), Color(0xff64B6FF)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          )
          ) ,
          child:
          Padding(
            padding: EdgeInsets.all(12),
            child:
            Row(
              children: <Widget>[
                Expanded(
                  child:
          Text('Medication Manager',
          style: TextStyle(fontSize: 22,color: Colors.white), textAlign: TextAlign.center))
              ])
            )
            ),

             Container(
          margin: const EdgeInsets.all(12.0),
          decoration: new BoxDecoration(
          
            border: Border.all(color: Colors.blue, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(5)),
             gradient: LinearGradient(colors: [Color(0xff374ABE), Color(0xff64B6FF)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          )
          ) ,
          child:
          Padding(
            padding: EdgeInsets.all(12),
            child:
            Row(
              children: <Widget>[
                Expanded(
                  child:
          Text('Exercise Tracker',
          style: TextStyle(fontSize: 22,color: Colors.white), textAlign: TextAlign.center))
              ])
            )
            ),
 Container(
          margin: const EdgeInsets.all(12.0),
          decoration: new BoxDecoration(
          
            border: Border.all(color: Colors.blue, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(5)),
             gradient: LinearGradient(colors: [Color(0xff374ABE), Color(0xff64B6FF)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          )
          ) ,
          child:
          Padding(
            padding: EdgeInsets.all(12),
            child:
            Row(
              children: <Widget>[
                Expanded(
                  child:
          Text('Appointments',
          style: TextStyle(fontSize: 22,color: Colors.white), textAlign: TextAlign.center))
              ])
            )
            ),

             Container(
          margin: const EdgeInsets.all(12.0),
          decoration: new BoxDecoration(
          
            border: Border.all(color: Colors.blue, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(5)),
             gradient: LinearGradient(colors: [Color(0xff374ABE), Color(0xff64B6FF)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          )
          ) ,
          child:
          Padding(
            padding: EdgeInsets.all(12),
            child:
            Row(
              children: <Widget>[
                Expanded(
                  child:
          Text('Resources',
          style: TextStyle(fontSize: 22,color: Colors.white), textAlign: TextAlign.center))
              ])
            )
            ),
          ]
        )


          ]   
      )
      )
    );
  }
}