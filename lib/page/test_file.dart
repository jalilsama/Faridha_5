import 'package:faridha/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
class TestFile extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
     // drawer: NavigationDrawerWidget(),
      appBar: AppBar(

        title: Text('test'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,

body:Container(
  color: Colors.red,
  child:   Center(

    child: Image.asset('images/1.png'),

  ),
),


  );
}
