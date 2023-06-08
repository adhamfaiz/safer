import 'package:flutter/material.dart';
import 'package:safer/pages/Home/home.dart';

import '../mybutton/mybutton.dart';
import 'HotelDetels.dart';

class Roomeshome extends StatefulWidget {
  const Roomeshome({super.key});

  @override
  State<Roomeshome> createState() => _RoomeshomeState();
}

class _RoomeshomeState extends State<Roomeshome> {
  @override
  Widget build(BuildContext context) {
    return 
      Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
       body:  SafeArea(
         child: Column(
           children: [
       
               
              Expanded(
                child: ListView(
                   children: [
                    
                  Container(
              
                child: drwer(),
                  ),
                      Roomes(img:"assets/images/hotel2.jpg",txt: "الغرفه",txt1: "الخدمات",txt2: "عدد الاسره",
                           txt3:"\$20" ,Number: "4",star: Icons.star,
                           ),
                Roomes(img:"assets/images/hotel2.jpg",txt: "جناح",txt1: "الخدمات",txt2: "عدد الاسره",
                           txt3: "\$20",Number: "4",star: Icons.star),
                Roomes(img:"assets/images/hotel2.jpg",txt: "الغرفه",txt1: "الخدمات",txt2: "عدد الاسره",
                           txt3: "4",Number: "\$20",star: Icons.star),
                Roomes(img:"assets/images/hotel2.jpg",txt: "الغرفه",txt1: "الخدمات",txt2: "عدد الاسره",
                           txt3: "4",Number: "\$20",star: Icons.star,
                            ontap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Hoteldetels())),
                           ),
                           
                           ],),
              ),


           ],
         )
       )));

    
  }
}