import 'dart:developer';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import '../colors/AppColor.dart';
import '../pages/Home/home.dart';


class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Colors.white70,
        
        body:  SafeArea(
          child: ListView(
            children: [
        
              Container(
                 
                  child: Stack(
                    children :
                    [
                      Container(
                       height:400,
                       width: double.infinity,
                      
                       decoration: const BoxDecoration(
                          color: Colors.transparent,
                          
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/00.jpg")),
                       ),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 320),
                        child:drwer(),),
                    
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 250),
                      height: 400,
                      width: double.infinity,
                      
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:BorderRadius.circular(20) ),
                        child: DefaultTabController(
                          length: 3,
                          child: ListView(children: [
                            
                            Container(
                            
                        child:   
                          ButtonsTabBar(
                            labelSpacing: 40,
                            buttonMargin: EdgeInsets.all(10),
                           
                                            unselectedBackgroundColor:Colors.white,
                                            backgroundColor:Colors.white ,
                                            borderColor: Color.fromARGB(255,
                                                255, 194, 0),
                                              unselectedBorderColor: Colors.white,
                                            borderWidth: 3,
                                            radius: 20,
                                            elevation: 6,
                                            height: 50,
                                            contentPadding: EdgeInsets.only(left: 38,right: 38),
                            
                      tabs:
                       [
                         Tab(
                           child: Text(
                             "الموقع",
                             style: TextStyle(
                                 color: Colors.blueGrey, fontWeight: FontWeight.bold),
                           ),
                         ),

                        Tab(
                          child: Text(
                            "معلومات الرحله",
                            style: TextStyle(
                                color: Colors.blueGrey, fontWeight: FontWeight.bold),
                          ),
                        ),

                         Tab(
                           child: Text(
                             "شرح",
                             style: TextStyle(
                                 color: Colors.blueGrey, fontWeight: FontWeight.bold),
                           ),
                         ),
                      ]),
                            ),
                            Container(
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  height: 440,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Expanded(
                        child: TabBarView(
                      children: [
                        Container(child: Center(child: Text("يقع في مدينه سيئون"),),),
                        Container(child: Center(child: Text("تتوفر الرحلات طيران او برا"),),),
                        Container(child: Center(child: Text("من اقضل الفنادق في "" في مدينه سيئون"),),),
                      ],
                    )),
                  ]),
                ),
                          ]),
                          )),
                        
                    
                    ]
                  )
                ),
                SizedBox(height: 50,),
              Container(
        
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     
                   MaterialButton(
                    onPressed: () {
                         Navigator.of(context).pushReplacementNamed("visited");
                    },
                    child:
                        Text(
                          "أنطلق",
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                    height: 40,
                    minWidth: 100,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                      MaterialButton(
                    onPressed: () {
                       Navigator.of(context).pushReplacementNamed("home");
                    },
                    child: Row(
                      children: const [
                         Text(
                          "رجوع",
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                        ),
                       
                        SizedBox(width: 5),
                        Icon(
                          Icons.arrow_circle_left,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    height: 40,
                    minWidth: 100,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  ],
                ),
              )
                
            ],
          ),
        )
       
      ),
    );
  }
}