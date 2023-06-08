import 'package:flutter/material.dart';
import '../mybutton/mybutton.dart';
import '../pages/Home/home.dart';



class Modelcar extends StatefulWidget {
  const Modelcar({super.key});

  @override
  State<Modelcar> createState() => _ModelcarState();
}

class _ModelcarState extends State<Modelcar> {
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child:
      Scaffold(
        backgroundColor: Colors.white70,
       
        body:  SafeArea(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.end ,
            children: [
              Container(
                 
                  child: Stack(
                    children :
                    [
                      Container(
                       height:400,
                       width: double.infinity,
                      
                       decoration: BoxDecoration(
                          color: Colors.red,
                          
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/pr3.jpg")),
                       ),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 300),
                        child: drwer()),
                    
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 340),
                      height: 400,
                      width: double.infinity,
                      
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:BorderRadius.circular(20) ),
                        child: DefaultTabController(
                          length: 3,
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: ListView(children: [
                                   Container(
                                     margin: EdgeInsets.only(top: 60,right: 10),
                                     child: Text("مواصفات السيارة",textAlign: TextAlign.center,
                                     style: TextStyle(fontWeight: FontWeight.bold,
                                     color: Color.fromARGB(255, 255, 189, 7),fontSize: 25),),),
                                     
                                         Text("أسم الشركه          تويوتا",
                                     style: TextStyle(fontWeight: FontWeight.bold,
                                     color: Color.fromARGB(255, 167, 166, 165),fontSize: 20),),
                                     Text("موديل السياره      Prado XR ",
                                     style: TextStyle(fontWeight: FontWeight.bold,
                                     color: Color.fromARGB(255, 167, 166, 165),fontSize: 20),),
                                     Text("سنه الصنع            2019",
                                     style: TextStyle(fontWeight: FontWeight.bold,
                                     color: Color.fromARGB(255, 167, 166, 165),fontSize: 20),),
                                     Text("عدد الأبواب             8",
                                     style: TextStyle(fontWeight: FontWeight.bold,
                                     color: Color.fromARGB(255, 167, 166, 165),fontSize: 20),),
                                      Text("ناقل الحركه          أوتوماتيك",
                                     style: TextStyle(fontWeight: FontWeight.bold,
                                     color: Color.fromARGB(255, 167, 166, 165),fontSize: 20),),
                                     Text("الأمتعة                 700كم",
                                     style: TextStyle(fontWeight: FontWeight.bold,
                                     color: Color.fromARGB(255, 167, 166, 165),fontSize: 20),),
                                     Text("السعر لليوم           200",
                                     style: TextStyle(fontWeight: FontWeight.bold,
                                     color: Color.fromARGB(255, 167, 166, 165),fontSize: 20),),
                                       Container(
                                       width: 70,
                                   height: 30,
                   
                   margin: EdgeInsets.only(right: 300,left: 30,bottom: 20),
                   decoration: BoxDecoration(
                     color: Colors.red,
                     borderRadius:BorderRadius.circular(10) ),
                     child: InkWell(
                       onTap: (){
                         Navigator.of(context).pushReplacementNamed("addcard");
                       },
                       child: Text("احجز",style: TextStyle(
                         fontSize: 20,color: Colors.white)
                         ,textAlign: TextAlign.center,),
                     )
             
               ),
                            ]),
                          ),
                          )),
                        
                    Container(
                      margin: EdgeInsets.only(top: 300),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                           Container(
                 height:80 ,
                 width: 120,
                  decoration: BoxDecoration(
                       color: Color.fromARGB(255, 252, 251, 246),
                       borderRadius:BorderRadius.circular(10),
                         image:  DecorationImage(
                           fit: BoxFit.fill,
                              image: AssetImage("assets/images/pr2.jpg"),
            ),
                        ),
                      
                 ),
                  Container(
                 height:80 ,
                 width: 120,
                  decoration: BoxDecoration(
                       color: Color.fromARGB(255, 252, 251, 246),
                       borderRadius:BorderRadius.circular(10),
                         image:  DecorationImage(
                           fit: BoxFit.fill,
                              image: AssetImage("assets/images/pr5.jpg"),
            ),
                        ),
                      
                 ),
                  Container(
                 height:80 ,
                 width: 120,
                  decoration: BoxDecoration(
                       color: Color.fromARGB(255, 252, 251, 246),
                       borderRadius:BorderRadius.circular(10),
                         image:  DecorationImage(
                           fit: BoxFit.fill,
                              image: AssetImage("assets/images/pr2.jpg"),
            ),
                        ),
                      
                 ),
                
                        ],
                      ),
                    )
                    ]
                  )
                ),
              Container(
                margin: EdgeInsets.only(left: 10,top: 20),
               child: buttonback(icon: Icons.home,txt: "رجوع",),
              )
                
            ],
          ),
        )),
    );
  }
}

