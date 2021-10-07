import 'dart:async';
import 'package:flutter/material.dart';
import '../../main.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(
        Duration(seconds: 1),() {
      Navigator.push(context,new MaterialPageRoute(builder: (context)=>MainPage()), );

    }

    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration:BoxDecoration(
              color: Colors.green,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 50.0,
                          child:Icon(
                            Icons.all_inclusive_rounded,
                            color:Colors.green,
                            size: 50.0,
                          ),
                        ),
                        Padding(
                          padding:EdgeInsets.only(top:10.0),
                        ),
                        Text(
                          "Few Seconds ",style:TextStyle(
                            color:Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
              ),
              Expanded(
                flex: 1,
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    CircularProgressIndicator(
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(top:20.0)),
                    Text(
                      'please wait',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize:24.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),


              ),
            ],
          ),
        ],
      ),
    );
  }
}
