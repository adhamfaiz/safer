import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:safer/local/local_contorollr.dart';
import 'package:safer/pages/Home/home.dart';

import '../../colors/AppColor.dart';




class HomeTow extends StatefulWidget {
  const HomeTow({Key? key}) : super(key: key);

  @override
  State<HomeTow> createState() => _HomeState();
}

class _HomeState extends State<HomeTow> {

 Widget headerBuild()
  {
    return drwer();
  }
 final GlobalKey<ScaffoldState> _keyDrawer = GlobalKey<ScaffoldState>();
   List tabs =[
     "رائج",
     "أثري",
     "سياحي",
   ];
 List category =[
   {"name": 'المكلا', "images":'assets/images/12.jpg',
   "pro": "يقع في مدينة صنعاء ويحتوي على \n      الكثير من الاماكن الاثرية",},
   {"name": 'جزيرة ميون', "images":'assets/images/13.jpg',
   "pro": "يقع في مدينة صنعاء ويحتوي على \n      الكثير من الاماكن الاثرية",},
   {"name": 'الحديدة', "images":'assets/images/14.jpg',
   "pro": "يقع في مدينة صنعاء ويحتوي على \n      الكثير من الاماكن الاثرية",},
   {"name": 'عدن', "images":'assets/images/12.jpg',
   "pro": "يقع في مدينة صنعاء ويحتوي على \n      الكثير من الاماكن الاثرية",},
   {"name": 'جزيرة كمران', "images":'assets/images/16.jpg',
   "pro": "يقع في مدينة صنعاء ويحتوي على \n      الكثير من الاماكن الاثرية",},
   {"name": 'الحديدة', "images":'assets/images/12.jpg',
   "pro": "يقع في مدينة صنعاء ويحتوي على \n      الكثير من الاماكن الاثرية",},


 ];
 List prodect =[
   {"name": 'المكلا',"pro":"عاصمة محافظة حضرموت وثالث اهم مدينة يمنية بعد عدن", "images":'assets/images/12.jpg'},
   {"name": 'جزيرة ميون',"pro":"تقع على حدود مضيق باب المندب", "images":'assets/images/13.jpg'},
   {"name": 'الحديدة',"pro":"يقع في مدينة صنعاء ويحتوي على الكثير من الاماكن الاثرية", "images":'assets/images/14.jpg'},
   {"name": 'عدن',"pro":"من أهم  المدن السياحية في اليمن", "images":'assets/images/14.jpg'},
   {"name": 'جزيرة كمران',"pro":"يقع في مدينة صنعاء ويحتوي على الكثير من الاماكن الاثرية", "images":'assets/images/16.jpg'},
   {"name": 'المكلا', "pro":"يقع في مدينة صنعاء ويحتوي على الكثير من الاماكن الاثرية","images":'assets/images/12.jpg'},

 ];
 int current = 0;

  @override
  Widget build(BuildContext context) {
 Melocalcontrollr contrrollrlang = Get.find();

    return  Scaffold(
     
      body:ListView(
          children: [
            SingleChildScrollView(
              child: Expanded(
                child: Container(
                    height: 170,
                    width: double.infinity,
                    child: 
                        
                           ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: category.length,
                            itemBuilder: (context, index) {
                              return 
                                   Stack(
                                    children: [
                                            Container(
                                              height: 150,
                                              width: 150,
                                              margin: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                 boxShadow: [
                                                  const BoxShadow(
                                                    offset: Offset(4, 10),
                                                    blurRadius: 10,
                                                    color: Colors.white,)],
                                                  
                                                borderRadius: BorderRadius.circular(10),
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image:AssetImage( category [index]["images"]) )
                                              ),
                                              
                                            child: 
                                              Container(
                                                margin: EdgeInsets.only(top:90,left: 65),
                                              child: Text(
                                                
                                               category [index]["name"],
                                                style: TextStyle(
                                                    color: AppColors.deep_orange,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            ),
                                        Container(
                                          margin: EdgeInsets.only(top: 115,right: 10),
                                          child: Text( category [index]["pro"], style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10),),
                                        ) 
                                        
                                    ],
                              
                                  );
                                
                            },
                          ),
                  ),
              ),

              ),
            const SizedBox(height: 10),
              Container(
              margin: EdgeInsets.only(right: 10),
                   child:
                
                      Text("nominations".tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lateef-Regular',
                              color: AppColors.deep_orange,
                              fontSize: 30)),
                   
                  
                ),
            Container(
              height: 900,
              child: ListView.builder(

                physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: prodect.length,
                  itemBuilder:(context, index){
                    return Container(
                      margin: const EdgeInsets.only(left:10, right: 10,bottom: 10),
                      child:InkWell (
                             onTap: (){
                               Navigator.of(context).pushReplacementNamed("myhome");
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
                            border:Border.all(color: Colors.orange.shade700, width: 0) ,
                      
                          ),
                          child: Row(
                            children: [
                              // images section
                              Container(
                                width: 110,
                                height: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.orange,width: 0),
                                  color: Colors.yellow.shade700,
                                  image:DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      prodect[index]["images"],
                                    )
                                  )
                                ),
                              ),
                              // text Container
                              Expanded(
                                child: Container(
                                  margin:const EdgeInsets.only(left: 10),
                                  child: Column(
                                    children: [
                                     Container(
                                       margin: const EdgeInsets.only(left: 150),
                                       child: Text( prodect[index]["name"],
                                         style: TextStyle(
                      
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Lateef-Regular',
                                        color: Colors.yellow.shade700,
                                        fontSize: 20, ),
                      
                                       ),
                                     ),
                      
                                      Text( prodect[index]["pro"],
                                        style: const TextStyle(
                                          fontFamily: 'Lateef-Regular',
                                          color: Colors.black,
                                          fontSize:15, ),
                      
                                      ),
                                      const SizedBox(height: 10,),
                                      Container(
                                        margin: const EdgeInsets.only(right: 150),
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow.shade700,
                                          border: Border.all(color: Colors.yellow.shade700),
                                          borderRadius: BorderRadius.circular(10),
                                            boxShadow: const[
                                              BoxShadow(
                                                color: Colors.black26,
                                                spreadRadius: 2,
                                                blurRadius: 2,
                                                offset:Offset (2,2),
                                              ),
                                              BoxShadow(
                                                  color: Colors.white70,
                                                  spreadRadius: 2,
                                                  blurRadius: 2,
                                                  offset: Offset(-2,-2)
                                              )
                                            ]
                      
                                        ),
                                        child: Row(
                                          children: [
                                            const Icon(Icons.star,color: Colors.white,),
                                            const Text("4.1",style: TextStyle(color: Colors.white),),
                                          ],
                                        ),
                                      )
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
            )


        ],
      ),
     

    );





  }
}
