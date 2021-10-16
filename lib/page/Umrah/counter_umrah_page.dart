import 'package:faridha/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';




EdgeInsets globalMargin =
const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0);
TextStyle textStyle = const TextStyle(
  fontSize: 100.0,
  color: Colors.black,
);

class CounterUmrahPage extends StatefulWidget {
  @override
  CounterPageState createState() => CounterPageState();
}

class CounterPageState extends State<CounterUmrahPage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: new AppBar(
        title: new Text('Counter'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[

          // Padding(
          //   padding: const EdgeInsets.all(5.0),
          //   child: Text('If the pilgrim reaches Makkah, he enters the Sacred Mosque with the right foot, and begins 7 circuits of circumambulation around the Kaaba, starting from the Black Stone, saying “In the name of God, and God is the Greatest.” He crowds at him, or refers to him from afar, mentions God and calls upon him as he pleases.\n\nAnd if he reaches the Yemeni corner, touch it without kissing, and if it is not possible for him, he does not crowd over it or point to it, and he says between him and the Black Stone: “Our Lord, give us good in this world and good in the hereafter, and protect us from the torment of the Fire.”')
          //   // Style: TextStyle(),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 14.0,
              shadowColor:Color(11111122222222222),
              borderRadius:BorderRadius.circular(5.0),
              color:Colors.teal,
              child: const Center(child:Text(
                'When the pilgrim reaches Makkah, he enters the Sacred Mosque with the right foot, and begins 7 circuits of circumambulation around the Kaaba, starting from the Black Stone, saying “In the name of God, and God is the Greatest.” He crowds at him, or refers to him from afar, mentions God and calls upon him as he pleases.', textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black,fontStyle: FontStyle.italic, wordSpacing: 5, letterSpacing: 1,  height: 1.4),),),),),

          Center(
            // padding: const EdgeInsets.all(0.0),
            child: new Text(
              number.toString(),
              style: TextStyle(fontSize: 60),
            ),
            // child: Text('If the pilgrim reaches Makkah, he enters the Sacred Mosque with the right foot, and begins 7 circuits of circumambulation around the Kaaba, starting from the Black Stone, saying “In the name of God, and God is the Greatest.” He crowds at him, or refers to him from afar, mentions God and calls upon him as he pleases.\n\nAnd if he reaches the Yemeni corner, touch it without kissing, and if it is not possible for him, he does not crowd over it or point to it, and he says between him and the Black Stone: “Our Lord, give us good in this world and good in the hereafter, and protect us from the torment of the Fire.”')
            // // Style: TextStyle(),
          ),

          // new Text( "",
          //
          //   style: new TextStyle(fontSize: 10.0),
          //   // number.toString(),
          //
          //
          // ),




          new GridView.count(
            padding: EdgeInsets.all(0.0),
            crossAxisCount: 2,
            // crossAxisSpacing: 2,
            // childAspectRatio: MediaQuery.of(context).size.width /
            //     (MediaQuery.of(context).size.height / 2),
            childAspectRatio: (1 / .6),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,

            children: <Widget>[
              new InkResponse(
                child: new Container(

                  // padding: new EdgeInsets.all(50.0),
                    decoration: BoxDecoration(

                      color: Colors.blue, // Border Color
                      border: Border.all(width: 3.0),
                      borderRadius: BorderRadius.all(  Radius.circular(30.0) ),  ),
                    margin: globalMargin,

                    child: new Center(
                      child: new Text(
                        "+",
                        style: TextStyle(fontSize:40),
                      ),
                    )),
                onTap: () {
                  setState(() {
                    this.number++;
                  });
                },
              ),

              new InkResponse(
                  child: new Container(
                      decoration: BoxDecoration(
                        color: Colors.red, // Border Color
                        border: Border.all(width: 3.0),
                        borderRadius: BorderRadius.all(  Radius.circular(30.0) ),

                      ),
                      margin: globalMargin,
                      child: new Center(
                        child: new Text(
                          "-",
                          style: TextStyle(fontSize:50),
                        ),
                      )),onTap: () {
                setState(() {
                  this.number--;
                });
              }),

            ],
          ),

          new Column(
            children: <Widget>[
              RaisedButton(
                padding: new EdgeInsets.all(0.0),
                child:Text('Done',style: TextStyle(color:Colors.white,fontSize: 20,),),
                color:Colors.teal,
                onPressed: (){
                  Navigator.pop(context);
                },
              ),


            ],
          ),
        ],
      ),
    );
  }
}