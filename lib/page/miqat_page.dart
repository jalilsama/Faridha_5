import 'package:faridha/widget/navigation_drawer_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// this is Miqat page
class MiqatPage extends StatelessWidget {
  var defaultText=TextStyle(color:Colors.black, fontSize: 15,);
  var linkText=TextStyle(color:Colors.white70,fontSize: 15,backgroundColor:Colors.blue,);
  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Miqat'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,
      body:ListView(
        children: <Widget>[



          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 200,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.teal, // Border Color
                  border: Border.all(width: 0.0),
                  borderRadius: BorderRadius.all(  Radius.circular(8.0) ),),
                //here the begging of location and the link  work
                child: Row(
                  children: [

                    Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 25.0,
                    ),

                    Center(
                      child: RichText(
                        text: TextSpan(
                          children:[
                            TextSpan(style: defaultText,
                                text:"َQarn al-Manazil\n\nthis miqat is located 80 kilometres east \nof Makkah. This is the Miqat for the people of\nNajd and for those travelling from countries\nsuch as the U.A.E, Oman, Pakistan, Australia,\nMalaysia, Singapore etc.\nIt is situated near the city of Taif.\n"),
                            TextSpan(style: linkText,
                                text:"\nClick here for the lacation",
                                recognizer:TapGestureRecognizer()..onTap = () async{
                                  var url = "https://goo.gl/maps/4AqJqJGmKPzRYhMfA";
                                  if(await canLaunch(url)){
                                    await launch(url);
                                  }else{throw"Can not loud Url";}
                                }
                            ),
                          ], ),

                      ),

                    ), ],

                )
              //the end of the link an location.
            ),),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 180,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.teal, // Border Color
                  border: Border.all(width: 0.0),
                  borderRadius: BorderRadius.all(  Radius.circular(8.0) ),),
                //here the begging of location and the link  work
                child: Row(
                  children: [

                    Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 25.0,
                    ),

                    Center(
                      child: RichText(
                        text: TextSpan(
                          children:[
                            TextSpan(style: defaultText,
                                text:"َDHU'L-HULAYFAh\n\nThis miqat is far 9 kilometers from Madinah \nand about 450 kilometers from Makkah.\nDhu'l-Hulayfah is the miqat for those who live \nin Madinah and for those who approach \nMakkah from that direction.\n"),
                            TextSpan(style: linkText,
                                text:"\nClick here for the lacation",
                                recognizer:TapGestureRecognizer()..onTap = () async{
                                  var url = "https://goo.gl/maps/qJqmxKEyKqct4K6B9";
                                  if(await canLaunch(url)){
                                    await launch(url);
                                  }else{throw"Can not loud Url";}
                                }
                            ),
                          ], ),

                      ),

                    ), ],

                )
              //the end of the link an location.
            ),),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 220,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.teal, // Border Color
                  border: Border.all(width: 0.0),
                  borderRadius: BorderRadius.all(  Radius.circular(8.0) ),),
                //here the begging of location and the link  work
                child: Row(
                  children: [

                    Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 25.0,
                    ),

                    Center(
                      child: RichText(
                        text: TextSpan(
                          children:[
                            TextSpan(style: defaultText,
                                text:"َAl-JUHFAH\n\nAl-Juhfah is located 182 kilometres (113 miles) \nnorthwest of Makkah. This is the Miqat for \npeople wants to perform Hajj travelling from\nNorth America, Europe, Turkey, Syria, Egypt,\nAlgeria, Sudan and several other African\ncountries. Pilgrims may also enter into Ihram \nat Rabigh, a town just to the north of al-Juhfah."),
                            TextSpan(style: linkText,
                                text:"\n\nClick here for the lacation",
                                recognizer:TapGestureRecognizer()..onTap = () async{
                                  var url = "https://goo.gl/maps/co2nVfnPwuJe9L5j7";
                                  if(await canLaunch(url)){
                                    await launch(url);
                                  }else{throw"Can not loud Url";}
                                }
                            ),
                          ], ),

                      ),

                    ), ],

                )
              //the end of the link an location.
            ),),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 170,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.teal, // Border Color
                  border: Border.all(width: 0.0),
                  borderRadius: BorderRadius.all(  Radius.circular(8.0) ),),
                //here the begging of location and the link  work
                child: Row(
                  children: [

                    Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 25.0,
                    ),

                    Center(
                      child: RichText(
                        text: TextSpan(
                          children:[
                            TextSpan(style: defaultText,
                                text:"َDHAT IRQ\n\nDhat Irq is located 90 kilometres (56 miles) \nnortheast of Makkah. This is the Miqat for \npeople intending to perform Hajj travelling \nfrom Iraq, Iran, China, Russia etc."),
                            TextSpan(style: linkText,
                                text:"\n\nClick here for the lacation",
                                recognizer:TapGestureRecognizer()..onTap = () async{
                                  var url = "https://goo.gl/maps/co2nVfnPwuJe9L5j7";
                                  if(await canLaunch(url)){
                                    await launch(url);
                                  }else{throw"Can not loud Url";}
                                }
                            ),
                          ], ),

                      ),

                    ), ],

                )
              //the end of the link an location.
            ),),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 200,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.teal, // Border Color
                  border: Border.all(width: 0.0),
                  borderRadius: BorderRadius.all(  Radius.circular(8.0) ),),
                //here the begging of location and the link  work
                child: Row(
                  children: [

                    Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 25.0,
                    ),

                    Center(
                      child: RichText(
                        text: TextSpan(
                          children:[
                            TextSpan(style: defaultText,
                                text:"YALAMLAM\n\nYalamlam  is located 100 kilometres (62 miles)\nsouth of Makkah. This is the Miqat for the \npeople of Yemen and those coming from the\nsouth. Pilgrims travelling from countries\nsuch as South Africa, Nigeria etc. will cross \nthis Miqat."),
                            TextSpan(style: linkText,
                                text:"\n\nClick here for the lacation",
                                recognizer:TapGestureRecognizer()..onTap = () async{
                                  var url = "https://goo.gl/maps/AVRQzKb6zEA3mgAY8";
                                  if(await canLaunch(url)){
                                    await launch(url);
                                  }else{throw"Can not loud Url";}
                                }
                            ),
                          ], ),

                      ),

                    ), ],

                )
              //the end of the link an location.
            ),),


        ],
      )

  );
}



