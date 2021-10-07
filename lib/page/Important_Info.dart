import 'package:faridha/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
// this is important info page
class ImportantInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Important Information'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,
      body:ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.teal, // Border Color
                border: Border.all(width:0.0),
                borderRadius: BorderRadius.all(
                    Radius.circular(8.0) //                 <--- border radius here
                ),        ),
              child: const Center(child:Text('Emergencyُ Numbers', textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white,),),),),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.teal, // Border Color
                border: Border.all(width:0.0),
                borderRadius: BorderRadius.all(
                    Radius.circular(8.0) //                 <--- border radius here
                ),        ),
              child: const Center(child:Text('Police assistance: 999/ 911.ُ ', textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black,),),),),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width:MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Colors.teal, // Border Color
                border: Border.all(width: 0.0),

                borderRadius: BorderRadius.all(
                    Radius.circular(8.0) //                 <--- border radius here
                ),        ),

              child: const Center(child: Text(
                'Fire emergency response: 998. ',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              ),),
            ),),
          Padding( padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.teal, // Border Color
                border: Border.all(width: 0.0),
                borderRadius: BorderRadius.all(
                    Radius.circular(8.0) //                 <--- border radius here
                ),        ),

              child: const Center(child: Text('	Car accidents: 993.',textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black,),),),),),
          Padding( padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.teal, // Border Color
                border: Border.all(width: 0.0),
                borderRadius: BorderRadius.all(
                    Radius.circular(8.0) //                 <--- border radius here
                ),        ),
              child: const Center(child: Text('Public ambulance services:997.'
                ,textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black,),),),),),
          Padding( padding: const EdgeInsets.all(8.0),
            child:
            Container(
              height: 50,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.teal, // Border Color
                border: Border.all(width: 0.0),
                borderRadius: BorderRadius.all(
                    Radius.circular(8.0) //                 <--- border radius here
                ),        ),
              child: const Center(child: Text('Natural disasters: 966. '

                ,style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black,
                ),
              ),),
            ),),
          Padding( padding: const EdgeInsets.all(8.0),
            child:
            Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.teal, // Border Color
                border: Border.all(width: 0.0),
                borderRadius: BorderRadius.all(
                    Radius.circular(8.0) //                 <--- border radius here
                ),        ),
              child: const Center(child: Text('Coast guards: 994.'

                ,style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black,
                ),
              ),),
            ),),
          Padding( padding: const EdgeInsets.all(8.0),
            child:
            Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.teal, // Border Color
                border: Border.all(width: 0.0),
                borderRadius: BorderRadius.all(
                    Radius.circular(8.0) //                 <--- border radius here
                ),        ),

              child: const Center(child: Text('General emergency: 112. ',

                style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black,
                ),
              ),),
            ),),

        ],
      )

  );
}
