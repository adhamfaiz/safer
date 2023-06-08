import 'package:flutter/material.dart';
import '../Cars/CarHome.dart';
class Hoteldetels extends StatefulWidget {
  const Hoteldetels({super.key});

  @override
  State<Hoteldetels> createState() => _HoteldetelsState();
}

class _HoteldetelsState extends State<Hoteldetels> {
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    return  Directionality(
      
      textDirection: TextDirection.rtl,
      child:
      Scaffold(
          backgroundColor: Colors.white70,
          
          
          body:  SafeArea(
            child: Container(
              width: mdw,
              child: ListView(
               
                children: [
                  Container(

                      child: Stack(
                          children :
                          [
                            Container(
                                height:400,
                                width: mdw,

                                decoration: BoxDecoration(
                                  

                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage("assets/images/hotel2.jpg")),
                                ),
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 250),
                                  child: Appar())

                            ),
                            Container(
                                margin: EdgeInsets.only(top:  340,),
                                padding: EdgeInsets.only(top: 40),
                                height: 400,
                                width: mdw,

                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:BorderRadius.circular(20) ),
                                child: 
                                   Column(
                                       mainAxisSize: MainAxisSize.min,
                                      children: [
                                      
                                       Text("مواصفات الغرفه",textAlign: TextAlign.center,
                                          style: TextStyle(fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(255, 255, 189, 7),fontSize: 25),),
                                            MyWidget(txt: "رقم الغرفه   ",txt1: "  304",),
                                            MyWidget(txt:"الطابق",txt1: "6"),
                                             MyWidget(txt:"عددالغرف",txt1: "4"),
                                             MyWidget(txt:"عدد الاسره",txt1: "4"),
                                             MyWidget(txt:"الوجبات ",star: Icons.one_k,txt1: "."),
                                      Container(
                                          width: mdw/5,
                                          height: 30,
                                          margin: EdgeInsets.only(right: 270,),
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:BorderRadius.circular(10) ),
                                          child:InkWell (
                                            onTap: (){
                                               Navigator.of(context).pushReplacementNamed("cars");
                                            },
                                            child: Text("احجز",style: TextStyle(
                                                fontSize: 20,color: Colors.white)
                                              ,textAlign: TextAlign.center,),
                                          )

                                      ),
                                    ]),
                                  ),
                                

                            Container(
                              margin: EdgeInsets.only(top: 300),
                             
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  image(img:"assets/images/hotel2.jpg",),
                                  image(img:"assets/images/hotel2.jpg",),
                                  image(img:"assets/images/hotel2.jpg",),
                                   
                                 

                                ],
                              ),
                            )
                          ]
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 90,right: 290),
                     child: Buttonback(buttontxt: "رجوع",
                     buttoncolor: Color.fromARGB(255, 170, 170, 170),
                     iconbutton: Icons.arrow_right,
                     )
                     
                  )
                
                ],
              ),
            ),
          )),
    );
  }
}


class MyWidget extends StatelessWidget {
  final txt;
final txt1;
  final  txt2;
  final Number;
  final txt3;
  final star;
  const MyWidget({super.key, this.txt2, this.txt,this.txt3, this.Number, this.star, this.txt1});

  @override
  Widget build(BuildContext context) {
    return    
        Container(
                    margin: EdgeInsets.only(left: 220,),
                    child: ListTile(leading: Text(txt,
                    style: TextStyle(fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 167, 166, 165),fontSize: 15),), 
                    trailing:Row(mainAxisSize: MainAxisSize.min,
                      children: [ Text(txt1),Icon(star)],)),);
     
  }
}

class image extends StatelessWidget {
  final img;
  const image({super.key,this.img});

  @override
  Widget build(BuildContext context) {
    return  Container(
                                  height:80 ,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 252, 251, 246),
                                    borderRadius:BorderRadius.circular(10),
                                    image:  DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage("$img"),
                                    ),
                                  ),

                                );

  }
}
class Buttonback extends StatelessWidget {
   final buttontxt;
  final  onpres;
  final iconbutton;
  final buttoncolor;
  const Buttonback({super.key,this.buttontxt,this.onpres,this.iconbutton,this.buttoncolor});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
                        onPressed: () {
                          onpres();
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:  [
                            Text(buttontxt,
                              style: TextStyle(color: buttoncolor, fontSize: 15),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              iconbutton,
                              color: Colors.black,
                            ),
                            
                            
                          ],
                        ),
                        height: 40,
                        minWidth: 20,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      );
                      
  }
}