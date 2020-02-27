import 'package:flutter/material.dart';
import 'package:tara_app/screens/wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: Wrapper(),
          );
    
  }
}
/*
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
     
      body: 
      SafeArea(
        child:
      Stack(
        fit:StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(image: NetworkImage('https://i.postimg.cc/x1FV4TjV/21343.jpg'), fit: BoxFit.fill)
              )
      ),
      Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 250,
              child:
            Text(
              'TARA', 
       style: TextStyle(fontSize: 110, color: Colors.red[400]),
            ),
            ),
            RaisedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => SecondScreen()));
            },
            textColor: Colors.white,
              child: Text('Enter Here'),
              color: Colors.red[300],
              
            ),
          ],
        ),
      ),

      
      
       // This trailing comma makes auto-formatting nicer for build methods.
  ]
  )
    ));
  }
}


class SecondScreen extends StatelessWidget {

  
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      
        
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
              Navigator.push(ctxt, MaterialPageRoute(builder:(context) => Dashboard()));
            },
          child: 
          Text('Go'),
          color: Colors.red[100]
          )
)
    ])
    ));
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
*/