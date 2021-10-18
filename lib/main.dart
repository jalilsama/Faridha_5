// @dart=2.9
import 'dart:ui';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:faridha/page/Hajj//haij_page.dart';
import 'package:faridha/page/Hajj/type_of_haij.dart';
import 'package:faridha/page/holy_places.dart';
import 'package:faridha/page/miqat_page.dart';
import 'package:faridha/page/nearby_page.dart';
import 'package:faridha/page/supplications_page.dart';
import 'package:faridha/page/Umrah//umra_page.dart';
import 'package:faridha/page/counter_page.dart';
import 'package:faridha/provider/navigation_provider.dart';
import 'package:faridha/widget/navigation_drawer_widget.dart';
import 'package:faridha/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import './translations/codegen_loader.g.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import '/main.dart';
// this the page in the app the last edit 27\9\2021
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
 
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);


  runApp(
   EasyLocalization(
     path: 'assests/translations',
     supportedLocales: [
       Locale('en'),
       Locale('ar')
     ],
    fallbackLocale: Locale('en'),
     assetLoader: CodegenLoader(),
//steel not done i wll continue tomorrow
   //https://www.youtube.com/watch?v=cposNqIsyAY  minutes 15:20
     child:  MyApp()),

  );
}

class MyApp extends StatelessWidget {
  static final String title = 'faridha';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => NavigationProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: title,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: MainPage(),
    ),
  );
}
class MainPage extends StatefulWidget {
  @override
  MainPageState createState() => MainPageState();
}
class MainPageState extends State<MainPage> {

  Material MyItemsNearBy( IconData icon,String heading,int color) {

    return Material(
      color:Colors.white,
      elevation: 14.0,
      shadowColor:Color.fromRGBO(0, 128, 128, 5),
      borderRadius:BorderRadius.circular(24.0),
      child: FlatButton(onPressed:(){
        Navigator.push(context,new MaterialPageRoute(builder: (context)=>NearBy()), );
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
                        fontSize:17.0,
                      ),).tr(),
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
      shadowColor:Color.fromRGBO(0, 128, 128, 5),
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
                        fontSize:17.0,
                      ),).tr(),
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
      shadowColor:Color.fromRGBO(0, 128, 128, 5),
      borderRadius:BorderRadius.circular(24.0),
      child: FlatButton(onPressed:(){
        Navigator.push(context,new MaterialPageRoute(builder: (context)=>TypeOfHaij()), );
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
                        fontSize:17.0,
                      ),).tr(),
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
      shadowColor:Color.fromRGBO(0, 128, 128, 5),
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
                        fontSize:17.0,
                      ),).tr(),
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
      shadowColor:Color.fromRGBO(0, 128, 128, 5),
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
                    SizedBox(
                      child: Text(heading,
                        style:TextStyle(
                          color: new Color(color),
                          fontSize:17.0,
                        ),).tr(),
                    ),
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
      shadowColor:Color.fromRGBO(0, 128, 128, 5),
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
                        fontSize:17.0,
                      ),).tr(),
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
      shadowColor:Color.fromRGBO(0, 128, 128, 5),
      borderRadius:BorderRadius.circular(24.0),
      child: FlatButton(onPressed:(){
        Navigator.push(context,new MaterialPageRoute(builder: (context)=>MiqatPage()), );
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
                        fontSize:17.0,
                      ),).tr(),
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
      color:Colors.teal,
      elevation: 14.0,
      shadowColor:Color.fromRGBO(0, 128, 128, 5),
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
                    style: TextStyle(
                        fontSize:25, color: Colors.white),),

                  //text
                  Material(
                    color: Colors.teal,
                    borderRadius:BorderRadius.circular(24.0),
                    child:Padding(
                      padding:const EdgeInsets.all(16.0),
                      child: Text(
                        DateFormat.yMMMEd().format(DateTime.now()),
                        style: TextStyle(
                            fontSize:25, color: Colors.white ),),
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
      // actions: <Widget>[
      //
      //
      //   PopupMenuButton<String>(
      //     onSelected: handleClick,
      //     itemBuilder: (BuildContext context) {
      //       return {
      //         'English',
      //         'العربية',
      //
      //       }.map((String choice) {
      //         return PopupMenuItem<String>(
      //           value: choice,
      //           child: Text(choice),
      //         );
      //       }).toList();
      //     },
      //   ),
      // ],
      backgroundColor: Colors.teal,
      title: Text('Faridha').tr(),
      centerTitle: true,

    ),
    body:StaggeredGridView.count(
      crossAxisCount:2,
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 12.0,
      padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0,),
      children:[
        MyItemsTime("Date",),
        MyItemsUmra(Icons.account_circle_rounded,"Umrah",11111122222222222),
        MyItemsHaij(Icons.account_circle_rounded,"hajj",11111122222222222),
        MyItemsCounter(Icons.alarm_add,"Counter",11111122222222222),
        MyItemsSupp(Icons.article,"Supplications",11111122222222222),
        MyItemsHoly(Icons.location_on,"Holy places",11111122222222222),
        MyItemsMiqat(Icons.bathtub_sharp,"Miqat",11111122222222222),
        MyItemsNearBy(Icons.near_me,"NearBy",11111122222222222),
      ],
      staggeredTiles: [
        StaggeredTile.extent(2, 150.0),
        StaggeredTile.extent(1, 150.0),
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
