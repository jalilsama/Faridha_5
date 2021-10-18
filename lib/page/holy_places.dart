import 'package:faridha/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
// this is holy places page
//احتاج الكلام من الشباب ما ابي اكتبه من اول
class HolyPlaces extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(

        title: Text('Holy places').tr(),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,

      body: ListView(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 14.0,
              shadowColor:Color(11111122222222222),
              borderRadius:BorderRadius.circular(5.0),
              color:Colors.teal,
              child: const Center(child:Text('JABAL AL NOUR'
                  '\n\nCalled the “Mountain of Light” or “Hill of Illumination,” Jabal Al Nour is famous for its Hira cave, where the Prophet Mohamed received the first of his many revelations. This rocky peak is visible for many kilometers around. Its significance in Islamic history, along with soaring views of Makkah and the Holy Mosque from its summit, make Jabal Al Nour a popular spot for pilgrims.',
                //textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black,),),),),),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color:Colors.teal,
              elevation: 14.0,
              shadowColor:Color(11111122222222222),
              borderRadius:BorderRadius.circular(5.0),
              child: const Center(child:Text('JABAL THAWR'
                  '\n\nJabal Thawr is one of the mountains that surround the valley where Makkah lies. It was within a cave here that The Prophet and his companion Abu Bakr (RA) hid for three days from the Quraish tribe. To protect the two men, Allah had a spider spin a web at the cave’s entrance, preventing their enemies from seeing within and finding them. Thawr Cave has since come to symbolize faith and hope.',
               // textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black,),),),),),



          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color:Colors.teal,
              elevation: 14.0,
              shadowColor:Color(11111122222222222),
              borderRadius:BorderRadius.circular(5.0),
              child: const Center(child:Text('MOUNT OF RAMAH'
                  '\n\nJabal Rahma located at Arafat plains is the very place where the Prophet Adam عليه السلام and Amma Hawwa got reunited on Earth after they were forgiven by Allah Almighty.',
                //textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black,),),),),),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color:Colors.teal,
              elevation: 14.0,
              shadowColor:Color(11111122222222222),
              borderRadius:BorderRadius.circular(5.0),
              child: const Center(child:Text('MUZDALIFAH  '
                  '\n\nMuzdalifah, also known as al-Mashar al-Haram is four kilometers long and has been referred to in the Holy Quran. People who come to Makkah to perform Umrah visit this ziyarat place as staying a night in Muzdalifah is one of the steps of Hajj.',
               // textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black,),),),),),



          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color:Colors.teal,
              elevation: 14.0,
              shadowColor:Color(11111122222222222),
              borderRadius:BorderRadius.circular(5.0),
              child: const Center(child:Text('JAMARAT'
                  '\n\nPelting stones at the 3 pillars of Jamarat is one of the wajib acts of Hajj. While you will hardly find any place to stop here during Hajj, nobody comes here for the remaining 11 months. ',
               // textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black,),),),),),




        ],
      )

  );
}
