import 'dart:math';

import 'package:flutter/material.dart';
import 'package:safer/pages/Home/home.dart';

import '../colors/AppColor.dart';
import '../mybutton/mybutton.dart';





class Cars extends StatefulWidget {
  const Cars({super.key});



  @override
  
  State<Cars> createState() => _CarsState();
}

class _CarsState extends State<Cars> {
  final GlobalKey<ScaffoldState> _keyDrawer = GlobalKey<ScaffoldState>();
  List category = [
    {"name": 'دار الحجر', "images": 'assets/images/11.jpg',
      "pro": "يقع في مدينة صنعاء ويحتوي على \n      الكثير من الاماكن الاثرية",},
    {"name": 'الحيمة', "images": 'assets/images/7.jpg',
      "pro": "يقع في مدينة صنعاء ويحتوي على \n       الكثير من الاماكن الاثرية",},
    {"name": 'جامع الصالح', "images": 'assets/images/8.jpg',
      "pro": "يقع في مدينة صنعاء ويحتوي على \n       الكثير من الاماكن الاثرية",
    },
    {"name": 'اب', "images": 'assets/images/9.jpg',
      "pro": "يقع في مدينة صنعاء ويحتوي على \n       الكثير من الاماكن الاثرية",},
    {"name": 'الحديدة', "images": 'assets/images/10.jpg',
      "pro": "يقع في مدينة صنعاء ويحتوي على \n        الكثير من الاماكن الاثرية",},
    {"name": 'sss', "images": 'assets/images/11.jpg',
      "pro": "يقع في مدينة صنعاء ويحتوي على \n        الكثير من الاماكن الاثرية",},
  ];
  List prodect = [
    {
      "name": 'دار الحجر',
      "pro": "يقع في مدينة صنعاء ويحتوي على الكثير من الاماكن الاثرية",
      "images": 'assets/images/11.jpg'
    },
    {
      "name": 'الحيمة',
      "pro": "يقع في مدينة صنعاء ويحتوي على الكثير من الاماكن الاثرية",
      "images": 'assets/images/7.jpg'
    },
    {
      "name": 'جامع الصالح',
      "pro": "يقع في مدينة صنعاء ويحتوي على الكثير من الاماكن الاثرية",
      "images": 'assets/images/8.jpg'
    },
    {
      "name": 'اب',
      "pro": "يقع في مدينة صنعاء ويحتوي على الكثير من الاماكن الاثرية",
      "images": 'assets/images/9.jpg'
    },
    {
      "name": 'الحديدة',
      "pro": "يقع في مدينة صنعاء ويحتوي على الكثير من الاماكن الاثرية",
      "images": 'assets/images/10.jpg'
    },
    {
      "name": 'عدن',
      "pro": "يقع في مدينة صنعاء ويحتوي على الكثير من الاماكن الاثرية",
      "images": 'assets/images/11.jpg'
    },
  ];
  int current = 0;
  @override
  var x=10;
  Widget build(BuildContext context) {
    return Directionality(

      textDirection: TextDirection.rtl,
      child:
      Scaffold(
        body:  SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               drwer(),
              Container(
                      margin: EdgeInsets.only(top: 30,bottom: 15,right: 10),
                      child: Text("شركات السيارات"  ,style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Lateef-Regular',
                                  color: AppColors.deep_orange,
                                  fontSize: 30))),

              Expanded(
                child: Container(
                  child: ListView.builder(


                      itemCount: prodect.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(
                              left: 10, right: 10, bottom: 10),
                          child: InkWell (
                            onTap: (){
                              Navigator.of(context).pushReplacementNamed("homecar");
                            },
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: AppColors.deep_orange, width: 0),
                                  boxShadow: [
                                    const BoxShadow(
                                      offset: Offset(0, 15),
                                      blurRadius: 25,
                                      color: Colors.white,
                                    )
                                  ]),
                              child: Row(
                                children: [
                                  // images section
                                  Container(
                                    width: 110,
                                    height: 110,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color:AppColors.deep_orange, width: 0),
                                        color: Colors.yellow.shade700,
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              prodect[index]["images"],
                                            ))),
                                  ),
                                  // text Container
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(left: 150),
                                            child: Text(
                                              prodect[index]["name"],
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Lateef-Regular',
                                                color: AppColors.deep_orange,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            prodect[index]["pro"],
                                            style: const TextStyle(
                                              fontFamily: 'Lateef-Regular',
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(right: 150),
                                            width: 50,
                                            decoration: BoxDecoration(
                                                color: Colors.yellow.shade700,
                                                border: Border.all(
                                                    color: Colors.yellow.shade700),
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                boxShadow: const [
                                                  BoxShadow(
                                                    color: Colors.black26,
                                                    spreadRadius: 2,
                                                    blurRadius: 2,
                                                    offset: Offset(2, 2),
                                                  ),
                                                  BoxShadow(
                                                      color: Colors.white70,
                                                      spreadRadius: 2,
                                                      blurRadius: 2,
                                                      offset: Offset(-2, -2))
                                                ]),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.white,
                                                ),
                                                const Text(
                                                  "4.1",
                                                  style:
                                                  TextStyle(color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),



              /*Expanded(
                child: Container(
                  child: ListView(
                    children: const [

                      
                    compCars(img: "assets/images/images.png",txt: "شركه ارحب",txt1: "4.3",),
                     compCars(img: "assets/images/cars.jpeg",txt: "شركه ارحب",txt1: "4.3",),
                     compCars(img: "assets/images/images.png",txt: "شركه ارحب",txt1: "4.3",),
                        compCars(img: "assets/images/cars.jpeg",txt: "شركه ارحب",txt1: "4.3",),
                     compCars(img: "assets/images/cars.jpeg",txt: "شركه ارحب",txt1: "4.3",),
                     compCars(img: "assets/images/00.jpg",txt: "شركه ارحب",txt1: "4.3",),
                        compCars(img: "assets/images/00.jpg",txt: "شركه ارحب",txt1: "4.3",),
                     compCars(img: "assets/images/00.jpg",txt: "شركه ارحب",txt1: "4.3",),
                     compCars(img: "assets/images/00.jpg",txt: "شركه ارحب",txt1: "4.3",),

                    
                    ]),
                ),
              ),*/
                Container(
                  margin: EdgeInsets.only(right: 300,bottom: 20),
                  child: butoonrev(txt: "تجاوز",function:  ()
                  {   Navigator.of(context).pushReplacementNamed("visited");},))
            ],
          ))));
  }
}


class compCars extends StatelessWidget {
  final img;
  final txt;
  final txt1;
  const compCars({super.key,this.img,this.txt,this.txt1});

  @override
  Widget build(BuildContext context) {
    return Container(
        
        margin: EdgeInsets.all(10),
        
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(2,10),
                      blurRadius: 10,color: Colors.black12,

                    )
                  ],
          borderRadius: BorderRadius.circular(10)
        ),
        height: 110,
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          
              Container(
             height:110 ,
             width: 120,
              decoration: BoxDecoration(
                  

                 borderRadius:BorderRadius.circular(10),
                   image: DecorationImage(
                     fit: BoxFit.fill,
                        image: AssetImage(img),
        ),
                  ),
                
             ),
                  
            
             Text(txt,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20
             ,color: Color.fromARGB(246, 253, 173, 1)),),
             Container(
               margin: EdgeInsets.only(left: 10,top: 30),
               width: 50,
               height: 20,
               decoration: BoxDecoration(
                 color: Colors.yellow,
                 borderRadius:BorderRadius.circular(12) ),
                 child:
             Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                Icon(Icons.star,color: Colors.white,size: 20,),
                     Text(txt1)
                   ],
                 )
             ),
          ],
        ),
      );
  }
}

