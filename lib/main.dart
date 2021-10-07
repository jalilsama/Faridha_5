// @dart=2.9
import 'package:faridha/page/Laoding/splaash_screen.dart';
import 'package:faridha/page/counter_page.dart';
import 'package:faridha/page/haij_page.dart';
import 'package:faridha/page/holy_places.dart';
import 'package:faridha/page/miqat_page.dart';
import 'package:faridha/page/supplications_page.dart';
import 'package:faridha/page/umra_page.dart';
import 'package:faridha/provider/navigation_provider.dart';
import 'package:faridha/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';


// this the page in the app
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Navigation Drawer';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => NavigationProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.green),
      home: SplashScreen(),
    ),
  );
}

class MainPage extends StatefulWidget {

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {

  Material MyItems( IconData icon,String heading,int color) {

    return Material(
      color:Colors.white,
      elevation: 14.0,
      shadowColor:Color(0x8021F336),
      borderRadius:BorderRadius.circular(24.0),
      child: FlatButton(onPressed:(){
        Navigator.push(context,new MaterialPageRoute(builder: (context)=>UmraPage()), );
      },
        splashColor: Colors.green,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0)),
        child:Center(
          child:Padding(
            padding:const EdgeInsets.all(8.0),


            child:Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                    //text
                    Text(heading,
                      style:TextStyle(
                        color: new Color(color),
                        fontSize:18.0,
                      ),),
                    //icon
                    Material(
                      color:new Color(color),
                      borderRadius:BorderRadius.circular(24.0),
                      child:Padding(
                          padding:const EdgeInsets.all(12.0),
                          child:Icon(icon,color:Colors.white,
                            size:25.0,)
                      ),),
                  ],
                ),
              ],
            ),
          ),
        ),),
    );
  }
  Material MyItemsUmra( IconData icon,String heading,int color) {

    return Material(
      color:Colors.white,
      elevation: 14.0,
      shadowColor:Color(0x8021F336),
      borderRadius:BorderRadius.circular(24.0),
      child: FlatButton(onPressed:(){
        Navigator.push(context,new MaterialPageRoute(builder: (context)=>UmraPage()), );
      },
        splashColor: Colors.green,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0)),
        child:Center(
          child:Padding(
            padding:const EdgeInsets.all(8.0),


            child:Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                    //text
                    Text(heading,
                      style:TextStyle(
                        color: new Color(color),
                        fontSize:18.0,
                      ),),
                    //icon
                    Material(
                      color:new Color(color),
                      borderRadius:BorderRadius.circular(24.0),
                      child:Padding(
                          padding:const EdgeInsets.all(12.0),
                          child:Icon(icon,color:Colors.white,
                            size:25.0,)
                      ),),
                  ],
                ),
              ],
            ),
          ),
        ),),
    );
  }
  Material MyItemsHaij( IconData icon,String heading,int color) {

    return Material(
      color:Colors.white,
      elevation: 14.0,
      shadowColor:Color(0x8021F336),
      borderRadius:BorderRadius.circular(24.0),
      child: FlatButton(onPressed:(){
        Navigator.push(context,new MaterialPageRoute(builder: (context)=>HaijPage()), );
      },
        splashColor: Colors.green,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0)),
        child:Center(
          child:Padding(
            padding:const EdgeInsets.all(8.0),


            child:Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                    //text
                    Text(heading,
                      style:TextStyle(
                        color: new Color(color),
                        fontSize:18.0,
                      ),),
                    //icon
                    Material(
                      color:new Color(color),
                      borderRadius:BorderRadius.circular(24.0),
                      child:Padding(
                          padding:const EdgeInsets.all(12.0),
                          child:Icon(icon,color:Colors.white,
                            size:25.0,)
                      ),),
                  ],
                ),
              ],
            ),
          ),
        ),),
    );
  }
  Material MyItemsCounter( IconData icon,String heading,int color) {

    return Material(
      color:Colors.white,
      elevation: 14.0,
      shadowColor:Color(0x8021F336),
      borderRadius:BorderRadius.circular(24.0),
      child: FlatButton(onPressed:(){
        Navigator.push(context,new MaterialPageRoute(builder: (context)=> CounterPage()), );
      },
        splashColor: Colors.green,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0)),
        child:Center(
          child:Padding(
            padding:const EdgeInsets.all(8.0),


            child:Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                    //text
                    Text(heading,
                      style:TextStyle(
                        color: new Color(color),
                        fontSize:18.0,
                      ),),
                    //icon
                    Material(
                      color:new Color(color),
                      borderRadius:BorderRadius.circular(24.0),
                      child:Padding(
                          padding:const EdgeInsets.all(12.0),
                          child:Icon(icon,color:Colors.white,
                            size:25.0,)
                      ),),
                  ],
                ),
              ],
            ),
          ),
        ),),
    );
  }
  Material MyItemsSupp( IconData icon,String heading,int color) {

    return Material(
      color:Colors.white,
      elevation: 14.0,
      shadowColor:Color(0x8021F336),
      borderRadius:BorderRadius.circular(24.0),
      child: FlatButton(onPressed:(){
        Navigator.push(context,new MaterialPageRoute(builder: (context)=>SupplicationsPage()), );
      },
        splashColor: Colors.green,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0)),
        child:Center(
          child:Padding(
            padding:const EdgeInsets.all(8.0),


            child:Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                    //text
                    Text(heading,
                      style:TextStyle(
                        color: new Color(color),
                        fontSize:18.0,
                      ),),
                    //icon
                    Material(
                      color:new Color(color),
                      borderRadius:BorderRadius.circular(24.0),
                      child:Padding(
                          padding:const EdgeInsets.all(12.0),
                          child:Icon(icon,color:Colors.white,
                            size:25.0,)
                      ),),
                  ],
                ),
              ],
            ),
          ),
        ),),
    );
  }
  Material MyItemsHoly( IconData icon,String heading,int color) {

    return Material(
      color:Colors.white,
      elevation: 14.0,
      shadowColor:Color(0x8021F336),
      borderRadius:BorderRadius.circular(24.0),
      child: FlatButton(onPressed:(){
        Navigator.push(context,new MaterialPageRoute(builder: (context)=>HolyPlaces()), );
      },
        splashColor: Colors.green,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0)),
        child:Center(
          child:Padding(
            padding:const EdgeInsets.all(8.0),


            child:Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                    //text
                    Text(heading,
                      style:TextStyle(
                        color: new Color(color),
                        fontSize:18.0,
                      ),),
                    //icon
                    Material(
                      color:new Color(color),
                      borderRadius:BorderRadius.circular(24.0),
                      child:Padding(
                          padding:const EdgeInsets.all(12.0),
                          child:Icon(icon,color:Colors.white,
                            size:25.0,)
                      ),),
                  ],
                ),
              ],
            ),
          ),
        ),),
    );
  }
  Material MyItemsMiqat( IconData icon,String heading,int color) {
    return Material(
      color:Colors.white,
      elevation: 14.0,
      shadowColor:Color(0x8021F336),
      borderRadius:BorderRadius.circular(24.0),
      child: FlatButton(onPressed:(){
        Navigator.push(context,new MaterialPageRoute(builder: (context)=> MiqatPage()), );
      },
        splashColor: Colors.green,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0)),
        child:Center(
          child:Padding(
            padding:const EdgeInsets.all(8.0),


            child:Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                    //text
                    Text(heading,
                      style:TextStyle(
                        color: new Color(color),
                        fontSize:18.0,
                      ),),
                    //icon
                    Material(
                      color:new Color(color),
                      borderRadius:BorderRadius.circular(24.0),
                      child:Padding(
                          padding:const EdgeInsets.all(12.0),
                          child:Icon(icon,color:Colors.white,
                            size:25.0,)
                      ),),
                  ],
                ),
              ],
            ),
          ),
        ),),
    );
  }
  Material MyItemsTime( String heading,) {

    return Material(
      color:Colors.green,
      elevation: 14.0,
      shadowColor:Color(0x8021F336),
      borderRadius:BorderRadius.circular(24.0),

      child: Center(

        child:Padding(
          padding:const EdgeInsets.all(8.0),

          child: Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children:[
                  Text(
                    DateFormat.jm().format(DateTime.now()),
                    style: TextStyle( color: Colors.white,
                      fontSize:25, ),),

                  //text
                  Material(
                    color:Colors.green,
                    borderRadius:BorderRadius.circular(24.0),
                    child:Padding(
                      padding:const EdgeInsets.all(16.0),
                      child: Text(
                        DateFormat.yMMMEd().format(DateTime.now()),
                        style: TextStyle( color: Colors.white,
                          fontSize:25, ),),
                    ),),
                ],
              ),
            ],
          ),),

      ),


    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      backgroundColor: Colors.green,
      title: Text('Faridha'),
      centerTitle: true,
    ),
    body:StaggeredGridView.count(
      crossAxisCount:2,
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 12.0,
      padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0,),
      children:[
        MyItemsTime("Date",),
        MyItemsUmra(Icons.account_circle_rounded,"Umrah",0xFF4CAF50),
        MyItemsHaij(Icons.account_circle_rounded,"haij",0xFF4CAF50),
        MyItemsCounter(Icons.alarm_add,"Counter",0xFF4CAF50),
        MyItemsSupp(Icons.article,"Supplications",0xFF4CAF50),
        MyItemsHoly(Icons.location_on,"Holy places",0xFF4CAF50),
        MyItemsMiqat(Icons.bathtub_sharp,"Miqat",0xFF4CAF50),

      ],
      staggeredTiles: [
        StaggeredTile.extent(2, 150.0),
        StaggeredTile.extent(1, 150.0),
        StaggeredTile.extent(1, 150.0),
        StaggeredTile.extent(1, 150.0),
        StaggeredTile.extent(1, 150.0),
        StaggeredTile.extent(1, 150.0),
        StaggeredTile.extent(1, 150.0),


      ],
    ),
  );
}
