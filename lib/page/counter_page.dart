import 'package:faridha/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';




EdgeInsets globalMargin =
const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0);
TextStyle textStyle = const TextStyle(
  fontSize: 100.0,
  color: Colors.black,
);

class CounterPage extends StatefulWidget {
  @override
  CounterPageState createState() => CounterPageState();
}

class CounterPageState extends State<CounterPage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: new AppBar(
        title: new Text('Counter').tr(),
        centerTitle: true,
      ),
      body: new Column(
        children: <Widget>[
          new Text(
            number.toString(),
            style: textStyle,
          ),
          new GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              new InkResponse(
                child: new Container(
                    decoration: BoxDecoration(
                      color: Colors.blue, // Border Color
                      border: Border.all(width: 0.0),
                      borderRadius: BorderRadius.all(  Radius.circular(15.0) ),),
                    margin: globalMargin,
                    child: new Center(
                      child: new Text(
                        "+",
                        style: textStyle,
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
                        border: Border.all(width: 0.0),
                        borderRadius: BorderRadius.all(  Radius.circular(15.0) ),),
                      margin: globalMargin,
                      child: new Center(
                        child: new Text(
                          "-",
                          style: textStyle,
                        ),
                      )),onTap: () {
                setState(() {
                  this.number--;
                });
              }),

            ],
          ),

          // RaisedButton(
          //   child:Text('back',style: TextStyle(color:Colors.white,fontSize: 15,),),
          //   color:Colors.green,
          //   onPressed: (){
          //     Navigator.pop(context);
          //   },),

        ],
      ),
    );
  }
}

