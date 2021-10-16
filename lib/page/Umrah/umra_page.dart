// import 'package:Faridea/page/counter_page.dart';
// import 'package:Faridea/page/umra_page.dart';
// import 'package:Faridea/widget/navigation_drawer_widget.dart';
import 'package:faridha/page/counter_page.dart';
import 'package:faridha/page/Umrah/counter_umrah_page.dart';
import 'package:faridha/page/Umrah/ihram_umrah_page.dart';
import 'package:bubble_timeline/bubble_timeline.dart';
import 'package:bubble_timeline/timeline_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:timeline_tile/timeline_tile.dart';
//import 'package:progress_timeline/progress_timeline.dart';

import 'quest_umrah_page.dart';
import 'throat_page.dart';
// import 'package:Faridea/page/icon_svg/icon_svg.dart';

class UmraPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(245,245,245, 5),
      appBar: AppBar(
        title: Text('Umrah Steps'),
        centerTitle: true,
        //backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          child: BubbleTimeline(
            bubbleDiameter: 100,
            // List of Timeline Bubble Items
            items: [
              TimelineItem(
                title: 'Ihram',
                subtitle: 'Click for more information',
                child: Container(
                  height: 100,
                  width: 100,
                  child: FlatButton(
                    splashColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    onPressed:(){

                      showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            // backgroundColor: Color.fromRGBO(0, 128, 128, 5),
                            title: Text('Ihram'),
                            content: Text('Are you done with Ihram?'),
                            actions: <Widget>[

                              RaisedButton(
                                child: Text('No'),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => IhramPage()),
                                  );
                                },
                              ),
                              RaisedButton(
                                child: Text('Done & Next Step'),
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );

                      print('the button has been pressed');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => IhramPage()),
                      );
                      // checkedIcon: Icon(
                      //   Icons.check_box,
                      //   color: Colors.teal,
                      // );
                    },
                    child: Icon(Icons.looks_one_rounded,
                      color: Colors.white,

                    ),
                  ),
                ),
                bubbleColor: Colors.grey,

              ),

              TimelineItem(
                title: 'Tawaf',
                subtitle: 'Click for more information',
                child: Container(
                  height: 100,
                  width: 100,
                  child: FlatButton(
                    splashColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    onPressed:(){
                      showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: Text('Tawaf'),
                            content: Text('Are you done with Tawaf?'),
                            actions: <Widget>[

                              RaisedButton(
                                child: Text('No'),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => CounterUmrahPage()),
                                  );
                                },
                              ),

                              RaisedButton(
                                child: Text('Yes & Next Step'),
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );

                      print('the button has been pressed');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CounterUmrahPage()),
                      );
                    },
                    child: Icon(Icons.looks_two_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
                bubbleColor: Colors.grey,
              ),
              TimelineItem(
                title: 'Quest',
                subtitle: 'Click for more',
                bubbleColor: Colors.grey,
                child: FlatButton(splashColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed:  () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context){
                        return AlertDialog(
                          title: Text('Quest'),
                          content: Text('Are you done with Quest?'),
                          actions: <Widget>[

                            RaisedButton(
                              child: Text('No'),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => QuestPage()),
                                );
                              },
                            ),

                            RaisedButton(
                              child: Text('Yes & Next Step'),
                              onPressed: (){
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuestPage()),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Icon(Icons.looks_3_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),


              TimelineItem(
                title: 'Throat or shortening to break out of Ihram',
                subtitle: 'Click for more',
                child: Container(
                  height: 100,
                  width: 100,
                  child: FlatButton(
                    splashColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    onPressed:(){

                      showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: Text('Throat'),
                            content: Text('Are you done with Throat?'),
                            actions: <Widget>[

                              RaisedButton(
                                child: Text('No'),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ThroatPage()),
                                  );
                                },
                              ),

                              RaisedButton(
                                child: Text('Finish'),
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                      print('the button has been pressed');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThroatPage()),
                      );
                    },
                    child: Icon(Icons.looks_4_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
                bubbleColor: Colors.grey,
              ),
              // TimelineItem(
              //   title: 'step 5',
              //   subtitle: 'I like to go with friends',
              //   child: Container(
              //     height: 100,
              //     width: 100,
              //     child: FlatButton(
              //       splashColor: Colors.green,
              //       shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(50.0)),
              //       onPressed:(){
              //         print('the button has been pressed');
              //
              //       },
              //       child: Icon(Icons.bathtub_sharp,
              //         color: Colors.white,
              //       ),
              //     ),
              //   ),
              //   bubbleColor: Colors.grey,
              // ),
              // TimelineItem(
              //   title: 'step 6',
              //   subtitle: 'I like to go with friends',
              //   child: Container(
              //     height: 100,
              //     width: 100,
              //     child: FlatButton(
              //       splashColor: Colors.green,
              //       shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(50.0)),
              //       onPressed:(){
              //         print('the button has been pressed');
              //         //  Navigator.push(
              //         //  context,
              //         //  MaterialPageRoute(builder: (context) => CounterPage()),
              //         // );
              //       },
              //       child: Icon(Icons.bathtub_sharp,
              //         color: Colors.white,
              //       ),
              //     ),
              //   ),
              //   bubbleColor: Colors.grey,
              // ),
              // TimelineItem(
              //   title: 'step 7',
              //   subtitle: 'step _____',
              //
              //   child: Container(
              //     height: 100,
              //     width: 100,
              //     child: FlatButton(
              //       splashColor: Colors.green,
              //       shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(50.0)),
              //       onPressed:(){
              //         print('the button has been pressed');
              //         //  Navigator.push(
              //         //  context,
              //         //  MaterialPageRoute(builder: (context) => CounterPage()),
              //         // );
              //       },
              //       child: Icon(Icons.bathtub_sharp,
              //         color: Colors.white,
              //       ),
              //     ),
              //   ),
              //   bubbleColor: Colors.grey,
              // ),
            ],
            stripColor: Colors.teal,
            scaffoldColor: Colors.white,
          ),
        ),
      ),
    );
  }
}