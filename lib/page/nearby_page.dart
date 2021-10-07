import 'package:faridha/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class NearBy extends StatelessWidget{

  @override

  Widget build(BuildContext context) => Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Near By Places'),
        centerTitle: true,
        //backgroundColor: Colors.green,
      ),
      body: GoogleMap(initialCameraPosition: CameraPosition(
        target: LatLng(
            21.422510,
            39.826168
        ),
        zoom: 15,),
      )
    // Center(
    //   child:RaisedButton(
    //     child:Text('back',style: TextStyle(color:Colors.white,fontSize: 15,),),
    //     color:Colors.green,
    //     onPressed: (){
    //       Navigator.pop(context);
    //     },
    //   ),
    // ),
  );


}