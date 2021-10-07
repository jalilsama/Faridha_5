import 'package:faridha/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
// this is Supplications page
class SupplicationsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Supplications'),
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
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Material(
              color:Colors.teal,
              elevation: 30.0,
              shadowColor:Color(11111122222222222),
              borderRadius:BorderRadius.circular(5.0),
              child: const SizedBox(child: Text('Rabbana taqabbal minna innaka antas Sameeaul Aleem.\n\nOur Lord! Accept (this service) from us: For Thou art the All-Hearing, the All-knowing. ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),),
            ),),
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
              child: const Center(child: Text('Rabbana wa-jalna Muslimayni laka wa min Dhurriyatina Ummatan Muslimatan laka wa Arina Manasikana wa tub alayna innaka antat-Tawwabu-Raheem '
                  '\n\nOur Lord! Make of us Muslims, bowing to Thy (Will), and of our progeny a people Muslim, bowing to Thy (will); and show us our place for the celebration of (due) rites; and turn unto us (in Mercy); for Thou art the Oft-Returning, Most Merciful.'
                ,textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black,),),),),),


          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Material(
              color:Colors.teal,
              elevation: 30.0,
              shadowColor:Color(11111122222222222),
              borderRadius:BorderRadius.circular(5.0),
              child: const SizedBox(child: Text('Rabbanaaa Aatinaa Fiddunyaa H’asanata Wa Fil Aakhirati H’asanata Wa Qinaa A’d’aaban Naar\n\nOur Lord! Give us in this world that which is good and in the Hereafter that which is good, and save us from the torment of the Fire!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
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
              child: const SizedBox(child: Text('Rabbana afrigh alayna sabran wa thabbit aqdamana wansurna alal-qawmil-kafirin\n\nOur Lord! Bestow on us endurance, make our foothold sure, and give us help against the disbelieving folk.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
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
              child: const SizedBox(child: Text('Rabbana innana amanna faghfir lana dhunuubana wa qinna adhab al-Naar\n\nOur Lord! We have indeed believed, so forgive us our sins and save us from the punishment of the Fire.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),),
            ),),



        ],
      )

  );
}
