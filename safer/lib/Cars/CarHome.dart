import 'package:flutter/material.dart';
import '../mybutton/mybutton.dart';
import '../pages/Home/home.dart';
import '../pages/drawer/drawer.dart';
import 'CarDetels.dart';



class Travil extends StatefulWidget {
const Travil({super.key});

  @override
  State<Travil> createState() => _TravilState();
}

class _TravilState extends State<Travil> {
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void descrementCounter() {
    setState(() {
      counter--;
    });
  }

  var selectcountruy = "صنعاء";
  var select = "عدن";
  var vas;
  var contary=[
                              "صنعاء",
                              "تعز",
                              "عدن",
                              "الحديده",
                              "حضرموت",
                              "سيئون",
                              "ذمار",
                              "مارب",
                              "ابين",
                              "لحج"
                            ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        
        body:SafeArea(
          child: Container(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               drwer(),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Text("ألوجهه",style: TextStyle(
                                color:Color.fromARGB(255, 255, 172, 17) ,
                                fontSize: 20,fontWeight: FontWeight.bold,
                              )),
              ),
                 Container(
                      padding: EdgeInsets.only(left: 80, right: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("من",
                              style: TextStyle(
                                color:Color.fromARGB(255, 255, 172, 17) ,
                                fontSize: 20,fontWeight: FontWeight.bold
                              )),
                            Text("ألى",
                              style: TextStyle(
                                 color:Color.fromARGB(255, 255, 172, 17) ,
                                fontSize: 20,fontWeight: FontWeight.bold
                              ))
                        ],
                      ),),
                      SizedBox(height: 10,),
                         Container(
                      padding: EdgeInsets.only(left: 70, right: 70),
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                           padding: EdgeInsets.only(right: 12),
                           height: 30,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 172, 17),
                              borderRadius:BorderRadius.circular(30) ),
                            child: DropdownButton(
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,
                             ),
                              items:contary
                                  .map((e) => DropdownMenuItem(
                                        child: Text("$e"),
                                        value: e,
                                      ))
                                  .toList(),
                              onChanged: (val) {
                                setState(() {
                                  // ignore: prefer_typing_uninitialized_variables
                                  selectcountruy = val!;
                                });
                              },
                              value: selectcountruy,
                            ),
                          ),
                          Container(
                             padding: EdgeInsets.only(right: 12),
                           height: 30,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 172, 17),
                              borderRadius:BorderRadius.circular(30) ),
                            child: DropdownButton(
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,
                             ),
                              items:contary
                                  .map((e) => DropdownMenuItem(
                                        child: Text("$e"),
                                        value: e,
                                      ))
                                  .toList(),
                              onChanged: (val) {
                                setState(() {
                                  // ignore: prefer_typing_uninitialized_variables
                                  select = val!;
                                });
                              },
                              value: select,
                            ),
                          ),
                        ],
                      ),
            
          ),
           SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(right: 10),
                child: Text("نوع السياره",style: TextStyle(
                                color:Color.fromARGB(255, 255, 172, 17) ,
                                fontSize: 20,fontWeight: FontWeight.bold,
                              )),
              ),
              Container(
                height: 580,
                child: ListView(
                  children: [
                  DitCars(iamges:"assets/images/pr2.jpg",txt: "4.5",txt1: "179\$",
                txt2: "prado",txt3: "سنه الصنع",txt4: "2019",txt5: "مقاعد",txt6: "8",),
                 DitCars(iamges:"assets/images/pr3.jpg",txt: "4.5",txt1: "179\$",
                txt2: "prado",txt3: "سنه الصنع",txt4: "2019",txt5: "مقاعد",txt6: "8",),
                 DitCars(iamges:"assets/images/pr4.jpg",txt: "4.5",txt1: "179\$",
                txt2: "prado",txt3: "سنه الصنع",txt4: "2019",txt5: "مقاعد",txt6: "8",),
                 DitCars(iamges:"assets/images/pr5.jpg",txt: "4.5",txt1: "179\$",
                txt2: "prado",txt3: "سنه الصنع",txt4: "2019",txt5: "مقاعد",txt6: "8",),
                 DitCars(iamges:"assets/images/pr5.jpg",txt: "4.5",txt1: "179\$",
                txt2: "prado",txt3: "سنه الصنع",txt4: "2019",txt5: "مقاعد",txt6: "8",),
                 DitCars(iamges:"assets/images/00.jpg",txt: "4.5",txt1: "179\$",
                txt2: "prado",txt3: "سنه الصنع",txt4: "2019",txt5: "مقاعد",txt6: "8",),
                 DitCars(iamges:"assets/images/00.jpg",txt: "4.5",txt1: "179\$",
                txt2: "prado",txt3: "سنه الصنع",txt4: "2019",txt5: "مقاعد",txt6: "8",),
                 DitCars(iamges:"assets/images/00.jpg",txt: "4.5",txt1: "179\$",
                txt2: "prado",txt3: "سنه الصنع",txt4: "2019",txt5: "مقاعد",txt6: "8",),
                 DitCars(iamges:"assets/images/00.jpg",txt: "4.5",txt1: "179\$",
                txt2: "prado",txt3: "سنه الصنع",txt4: "2019",txt5: "مقاعد",txt6: "8",),
                ],),
              ),
               Container(
                 margin: EdgeInsets.only(right: 300),
                 child: butoonrev(txt: "تجاوز",function: (){
                    Navigator.of(context).pushReplacementNamed("hotedetels");
                 },)),
           ]),),
        )
          ),
    ); 
      
    
  }
}


class DitCars extends StatelessWidget {
final iamges;
final txt;
final txt1;
final txt2;
final txt3;
final txt4;
final txt5;
final txt6;
final onpres;
final onpres1;
  const DitCars({super.key,this.iamges,this.txt,this.txt1,
  this.txt2,this.txt3,this.onpres,this.onpres1,this.txt4,this.txt5,this.txt6});

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
          color: Colors.grey.shade200,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2,10),
                      blurRadius: 10,color: Colors.black12,
                    )
                  ],

            borderRadius: BorderRadius.circular(10)
          ),
          height: 110,
          
          child: Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Container(
                 height:110 ,
                 width: 120,
                  decoration: BoxDecoration(
                     color: Colors.yellow,
                     borderRadius:BorderRadius.circular(10),
                       image:  DecorationImage(
                         fit: BoxFit.fill,
                            image: AssetImage(iamges),
            ),
                      ),  
                 ),
             
              Column(
                children: [
                   Container(
                      margin: EdgeInsets.only(left: 10,top: 10),
                      child: Text(txt2,
                      style: TextStyle(fontSize: 20
                     ,color: Color.fromARGB(255, 255, 189, 6)),),),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Container(
                           child: Text(txt3,style: TextStyle(
                             color: Color.fromARGB(255, 171, 172, 173)),)),
                              SizedBox(width: 10,),
                         Container(
                           margin: EdgeInsets.only(left: 80),
                           child: Text(txt4,style: TextStyle(
                             color: Color.fromARGB(255, 171, 172, 173)),)), 
                       ],
                     ),
                       Row(
                        mainAxisSize: MainAxisSize.min,
                       children: [
                         Container(
                           child: Text(txt5,style: TextStyle(
                             color: Color.fromARGB(255, 171, 172, 173)),)),
                             SizedBox(width: 20,),
                         Container(
                           margin: EdgeInsets.only(left: 120),
                           child: Text(txt6,style: TextStyle(
                             color: Color.fromARGB(255, 171, 172, 173)),)),
                       ],
                     ),
                     InkWell 
                       (onTap: () =>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Modelcar())) ,
                         child: Text("المزيد",
                                             style: TextStyle(fontSize: 12
                                            ,color: Color.fromARGB(255, 255, 6, 6)),),
                       ),
                ],
              ),
               Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                     Container(
                 width: 50,
                 height: 20,
                 decoration: BoxDecoration(
                       color: Colors.yellow,
                       borderRadius:BorderRadius.circular(12) ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                  Icon(Icons.star,color: Colors.white,size: 20,),
                           Text(txt,style: TextStyle(color: Colors.white),)
                ],)
                   ),
                    Container(
                     width: 50,
                     height: 20,
                     margin: EdgeInsets.all(15),
                     padding: EdgeInsets.only(right: 7),
                     decoration: BoxDecoration(
                       color: Color.fromARGB(255, 116, 113, 112),
                       borderRadius:BorderRadius.circular(12) ),
                       child: Text(txt1,style: TextStyle(fontSize: 15,color: Colors.white),)
                ),
                     Container(
                     width: 50,
                     height: 20,
                     /*decoration: BoxDecoration(
                       color: Colors.red,
                       borderRadius:BorderRadius.circular(12) ),
                       43333c2child:InkWell
                       (onTap: () => Navigator.of(context).pushReplacementNamed("addcard"),
                         child: Text("حجز",textAlign: TextAlign.center,
                         style: TextStyle(fontSize:13 ,color: Colors.white),))*/
                 ),
                ],
              ),
              ])));            
  }
}


class Appar extends StatefulWidget {
  const Appar({super.key});

  @override
  State<Appar> createState() => _ApparState();
}

class _ApparState extends State<Appar> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(1, 1),
                    ),
                    BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(-1, -1))
                  ],
                  borderRadius: BorderRadius.circular(40)),
              ),
          const Expanded(child: Text("")),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(1, 1),
                    ),
                    BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(-1, -1))
                  ],
                  borderRadius: BorderRadius.circular(40)),
    child: IconButton(
    icon: Icon(
    Icons.arrow_back_ios_new,
    color: Colors.yellow.shade700,
    size: 25,
    ),
    onPressed: () {
    Navigator.of(context).pushReplacementNamed("homecar");

    },
    )
              ),
        ],
      ),
    );
  }
}
