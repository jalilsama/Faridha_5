import 'package:faridha/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
// this is Supplications page
class IhramPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('Ihram'),
      centerTitle: true,
      backgroundColor: Colors.teal,
    ),
    backgroundColor: Colors.white,
    body:ListView(


      children: <Widget>[
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Material(
        //     color:Colors.teal,
        //     elevation: 14.0,
        //     shadowColor:Color(0x8021F336),
        //     borderRadius:BorderRadius.circular(24.0),
        //     child: const Center(child:Text(' َربَّنَا تَقَبَّلْ مِنَّا إِنَّكَ أَنْتَ السَّمِيعُ العَلِيمُ ', textDirection: TextDirection.rtl,
        //  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white70,),),),),),
        // Padding(
        //   padding: const EdgeInsets.all(14.0),
        //   child: Material(
        //     color:Colors.teal,
        //     elevation: 30.0,
        //     shadowColor:Color(11111122222222222),
        //     borderRadius:BorderRadius.circular(5.0),
        //     child: const SizedBox(child: Text('Rabbana taqabbal minna innaka antas Sameeaul Aleem.\n\nOur Lord! Accept (this service) from us: For Thou art the All-Hearing, the All-knowing. ',
        //       style: TextStyle(
        //         fontSize: 20,
        //         fontWeight: FontWeight.bold,
        //         color: Colors.black,
        //           fontStyle: FontStyle.italic,
        //           wordSpacing: 5,
        //           letterSpacing: 1,
        //           height: 1.4
        //       ),
        //     ),),
        //   ),),
        // Padding( padding: const EdgeInsets.all(8.0),
        //   child: Material(
        //     color:Colors.white,
        //     elevation: 14.0,
        //     shadowColor:Color(0x8021F336),
        //     borderRadius:BorderRadius.circular(24.0),
        //     child: const Center(child: Text('رَبَّنَا وَاجْعَلْنَا مُسْلِمَيْنِ لَكَ وَمِن ذُرِّيَّتِنَا أُمَّةً مُّسْلِمَةً لَّكَ وَأَرِنَا مَنَاسِكَنَا وَتُبْ عَلَيْنَآ إِنَّكَ أَنتَ التَّوَّابُ الرَّحِيمُ',textDirection: TextDirection.rtl,
        //       style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.green,),),),),),
        Padding( padding: const EdgeInsets.all(15.0),
          child: Material(
            color:Colors.teal,
            elevation: 14.0,
            shadowColor:Color(11111122222222222),
            borderRadius:BorderRadius.circular(5.0),
            child: const Center(child: Text('1- Washes and puts on perfume.'
              ,textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  wordSpacing: 5,
                  letterSpacing: 1,
                  height: 1.4),),),),),


        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Material(
            color:Colors.teal,
            elevation: 30.0,
            shadowColor:Color(11111122222222222),
            borderRadius:BorderRadius.circular(5.0),
            child: const SizedBox(child: Text('2- For men puts on the Ihram clothes, which is a white upper robe and down robe, and the right shoulder appears only during the coming circumambulation only, while the woman wears whatever clothes she wants without any adornment.',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  wordSpacing: 5,
                  letterSpacing: 1,
                  height: 1.4
              ),
            ),),
          ),),


        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Material(
            color:Colors.teal,
            elevation: 30.0,
            shadowColor:Color(11111122222222222),
            borderRadius:BorderRadius.circular(5.0),
            child: const SizedBox(child: Text('3- Then he prays two rak’ahs and intends to enter into Ihram for Umrah.',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  wordSpacing: 5,
                  letterSpacing: 1,
                  height: 1.4
              ),
            ),),
          ),),



        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Material(
            color:Colors.teal,
            elevation: 30.0,
            shadowColor:Color(11111122222222222),
            borderRadius:BorderRadius.circular(5.0),
            child: const SizedBox(child: Text('Then he/she says: “Praise be to you, Umrah, to you, O God, to you, to you, there is no partner for you. Praise be to you and the king, there is no partner for you.” The man raises his image with this, but the woman says it as much as he hears from her side only, then they multiply the Talbiyah, and the male.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),),
          ),),

        new Column(
          children: <Widget>[
            RaisedButton(

              padding: new EdgeInsets.all(0.0),
              // borderRadius:BorderRadius.circular(5.0),
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