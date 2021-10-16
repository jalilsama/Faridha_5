import 'package:faridha/page/Laoding/splaash_screen.dart';
import 'package:faridha/page/counter_page.dart';
import 'package:faridha/page/Hajj/haij_page.dart';
import 'package:faridha/page/holy_places.dart';
import 'package:faridha/page/miqat_page.dart';
import 'package:faridha/page/supplications_page.dart';
import 'package:faridha/page/Umrah/umra_page.dart';
import 'package:faridha/provider/navigation_provider.dart';
import 'package:faridha/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
class TypeOfHaij extends StatefulWidget {

  @override
  TypeOfHaijState createState() => TypeOfHaijState();
}

class TypeOfHaijState extends State<TypeOfHaij> {


  Material MyItemsIfrad( IconData icon,String heading,int color) {

    return Material(
      color:Colors.white,
      elevation: 14.0,
      shadowColor:Color.fromRGBO(0, 128, 128, 5),
      borderRadius:BorderRadius.circular(24.0),
      child: FlatButton(onPressed:(){
        Navigator.push(context,new MaterialPageRoute(builder: (context)=>HaijPage()), );
      },
        splashColor: Colors.teal,
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
  Material MyItemsQiran( IconData icon,String heading,int color) {

    return Material(
      color:Colors.white,
      elevation: 14.0,
      shadowColor:Color.fromRGBO(0, 128, 128, 5),
      borderRadius:BorderRadius.circular(24.0),
      child: FlatButton(onPressed:(){
        Navigator.push(context,new MaterialPageRoute(builder: (context)=>HaijPage()), );
      },
        splashColor: Colors.teal,
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
  Material MyItemsTamattu( IconData icon,String heading,int color) {

    return Material(
      color:Colors.white,
      elevation: 14.0,
      shadowColor:Color.fromRGBO(0, 128, 128, 5),
      borderRadius:BorderRadius.circular(24.0),
      child: FlatButton(onPressed:(){
        Navigator.push(context,new MaterialPageRoute(builder: (context)=> HaijPage()), );
      },
        splashColor: Colors.teal,
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


  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      backgroundColor: Colors.teal,
      title: Text('type of hajj'),
      centerTitle: true,
    ),
    body:StaggeredGridView.count(
      crossAxisCount:2,
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 12.0,
      padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0,),
      children:[

        MyItemsIfrad(Icons.account_circle_rounded,"IFRAD",11111122222222222),
        MyItemsQiran(Icons.account_circle_rounded,"QIRAN",11111122222222222),
        MyItemsTamattu(Icons.account_circle_rounded,"TAMATTU",11111122222222222),


      ],
      staggeredTiles: [
        StaggeredTile.extent(2, 150.0),
        StaggeredTile.extent(2, 150.0),
        StaggeredTile.extent(2, 150.0),



      ],
    ),
  );
}