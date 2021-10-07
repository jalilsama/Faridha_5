import 'package:faridha/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
class UmraPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('Umra'),
      centerTitle: true,
      //backgroundColor: Colors.green,
    ),
    body: Center(
      child:RaisedButton(
        child:Text('back',style: TextStyle(color:Colors.white,fontSize: 15,),),
        color:Colors.green,
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    ),
  );
}