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
              margin: const EdgeInsets.only(bottom: 50, top: 30),
              child:
            Text('Welcome Back, User',
            style: TextStyle(fontSize: 30, color: Colors.red[300])),
            ),

        Container(
          margin: const EdgeInsets.all(12.0),
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(5)),
            
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
          style: TextStyle(fontSize: 22), textAlign: TextAlign.center),),
            Expanded(
              child:
              Align(alignment: Alignment.centerRight, child:
          
          Icon(
            Icons.check_box,
            color: Colors.red[300],
            size: 40.0,
           
          )
            )
            )
              ])
            )
            ),

            Container(
          margin: const EdgeInsets.all(12.0),
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(5)),
            
          ) ,
          child:
          Padding(
            padding: EdgeInsets.all(12),
            child:
          Text('Exercise Tracker',
          style: TextStyle(fontSize: 20), textAlign: TextAlign.center)
            )
            )

          ]
        )


          ]   
      )
      )
    );
  }
}