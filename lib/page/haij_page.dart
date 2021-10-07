import 'package:faridha/page/counter_page.dart';
import 'package:faridha/page/umra_page.dart';
import 'package:faridha/widget/navigation_drawer_widget.dart';
import 'package:bubble_timeline/bubble_timeline.dart';
import 'package:bubble_timeline/timeline_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:faridha/page/icon_svg/icon_svg.dart';

class HaijPage extends StatelessWidget {
  final List<TimelineItem> _items = [
    TimelineItem(
      title: 'step 1',
      subtitle: 'Travel through Oceans',
      child: Container(
        height: 100,
        width: 100,
        child: FlatButton(
          splashColor: Colors.green,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0)),
          onPressed:(){
            print('the button has been pressed');
            //  Navigator.push(
            //  context,
            //  MaterialPageRoute(builder: (context) => CounterPage()),
            // );
          },
          child: Icon(Icons.bathtub_sharp,
            color: Colors.white,
          ),
        ),
      ),
      bubbleColor: Colors.grey,
    ),
    TimelineItem(
      title: 'step 2',
      subtitle: 'Road Trips are best',
      child: Container(
        height: 100,
        width: 100,
        child: FlatButton(
          splashColor: Colors.green,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0)),
          onPressed:(){
            print('the button has been pressed');
            //  Navigator.push(
            //  context,
            //  MaterialPageRoute(builder: (context) => CounterPage()),
            // );
          },
          child: Icon(Icons.bathtub_sharp,
            color: Colors.white,
          ),
        ),
      ),
      bubbleColor: Colors.grey,
    ),
    TimelineItem(
      title: 'step 3',
      subtitle: 'I like to go with friends',
      bubbleColor: Colors.grey,
      child: FlatButton(splashColor: Colors.green,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0)),
        onPressed:  () {

        },
        child: Container(
          height: 100,
          width: 100,
          child: Icon(Icons.bathtub_sharp,
            color: Colors.white,
          ),
        ),
      ),
    ),


    TimelineItem(
      title: 'step 4',
      subtitle: 'I like to go with friends',
      child: Container(
        height: 100,
        width: 100,
        child: FlatButton(
          splashColor: Colors.green,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0)),
          onPressed:(){
            print('the button has been pressed');
            //  Navigator.push(
            //  context,
            //  MaterialPageRoute(builder: (context) => CounterPage()),
            // );
          },
          child: Icon(Icons.bathtub_sharp,
            color: Colors.white,
          ),
        ),
      ),
      bubbleColor: Colors.grey,
    ),
    TimelineItem(
      title: 'step 5',
      subtitle: 'I like to go with friends',
      child: Container(
        height: 100,
        width: 100,
        child: FlatButton(
          splashColor: Colors.green,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0)),
          onPressed:(){
            print('the button has been pressed');
            //  Navigator.push(
            //  context,
            //  MaterialPageRoute(builder: (context) => CounterPage()),
            // );
          },
          child: Icon(Icons.bathtub_sharp,
            color: Colors.white,
          ),
        ),
      ),
      bubbleColor: Colors.grey,
    ),
    TimelineItem(
      title: 'step 6',
      subtitle: 'I like to go with friends',
      child: Container(
        height: 100,
        width: 100,
        child: FlatButton(
          splashColor: Colors.green,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0)),
          onPressed:(){
            print('the button has been pressed');
            //  Navigator.push(
            //  context,
            //  MaterialPageRoute(builder: (context) => CounterPage()),
            // );
          },
          child: Icon(Icons.bathtub_sharp,
            color: Colors.white,
          ),
        ),
      ),
      bubbleColor: Colors.grey,
    ),
    TimelineItem(
      title: 'step 7',
      subtitle: 'step _____',

      child: Container(
        height: 100,
        width: 100,
        child: FlatButton(
          splashColor: Colors.green,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0)),
          onPressed:(){
            print('the button has been pressed');
            //  Navigator.push(
            //  context,
            //  MaterialPageRoute(builder: (context) => CounterPage()),
            // );
          },
          child: Icon(Icons.bathtub_sharp,
            color: Colors.white,
          ),
        ),
      ),
      bubbleColor: Colors.grey,
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Haij'),
        centerTitle: true,
        //backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          child: BubbleTimeline(
            bubbleDiameter: 120,
            items: _items,
            stripColor: Colors.teal,
            scaffoldColor: Colors.white,
          ),
        ),
      ),
    );
  }
}




