import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safer/colors/AppColor.dart';
import 'package:safer/pages/Home/Homethree.dart';
import 'package:safer/pages/Home/Hometow.dart';
import 'package:safer/pages/drawer/drawer.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import '../../local/local_contorollr.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Melocalcontrollr contrrollrlang = Get.find();
  Widget headerBuild() {
    return const drwer();
  }

  final GlobalKey<ScaffoldState> _keyDrawer = GlobalKey<ScaffoldState>();
  List tabs = [
    "رائج",
    "أثري",
    "سياحي",
  ];
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
  Widget build(BuildContext context) {
    return Scaffold(
      key: _keyDrawer,
      endDrawer: MyDrawer(),
      body:
         Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                                            margin: const EdgeInsets.all(5),
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
                                              margin: const EdgeInsets.only(top:90,left: 65),
                                            child: Text(
                                              
                                             category [index]["name"],
                                              style: const TextStyle(
                                                  color: AppColors.deep_orange,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 115,right: 10),
                                        child: Text( category [index]["pro"], style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10),),
                                      ) 
                                      
                                  ],
                            
                                );
                              
                          },
                        ),
                ),
              ),),
                 
            
            Container(
              margin: const EdgeInsets.only(right: 10),
                   child:
                
                      Text("nominations".tr,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lateef-Regular',
                              color: AppColors.deep_orange,
                              fontSize: 30)),
                   
                  
                ),
              
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
            
          ],
        ),
      );
    
  }
}


class drwer extends StatelessWidget {
  const drwer({super.key});
  Widget headerBuild() {
    return const drwer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.yellow.shade700,
                  size: 25,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyDrawer()));
                },
              )),
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
                  Icons.search,
                  color: Colors.yellow.shade700,
                  size: 25,
                ),
                onPressed: () {},
              )),
        ],
      ),
    );
  }
}

class Homes extends StatefulWidget {
  const Homes({super.key});

  @override
  State<Homes> createState() => _HomesState();
}

class _HomesState extends State<Homes> {
    Widget headerBuild() {
    return const drwer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      endDrawer: MyDrawer(),
      body:  SafeArea(
          child:
                        Column(
                           mainAxisSize: MainAxisSize.min,
                          children: [
                            headerBuild(),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                child: DefaultTabController(
                                      length: 3,
                                      child:
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            child: ButtonsTabBar(
                                              splashColor:AppColors.deep_orange,
                                              unselectedBackgroundColor:Colors.white,
                                              backgroundColor:Colors.white ,
                                              borderColor: const Color.fromARGB(255,
                                                  255, 194, 0),
                                                unselectedBorderColor: Colors.white,
                                              borderWidth: 3,
                                              radius: 20,
                                              elevation: 6,
                                              height: 50,
                                              contentPadding: const EdgeInsets.only(left: 38,right: 40),

                                  tabs:
                                   [
                                    Tab(
                                            child: Text(
                                  "rock".tr,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.deep_orange,
                                    fontSize: 17,
                                  ),
                                ),
                                    ),
                                    Tab(
                                            child:  Text(
                                  "archaeological".tr,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.deep_orange,
                                    fontSize: 17,
                                  ),
                                ),
                                    ),
                                     Tab(
                                            child:  Text(
                                  "tourist".tr,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.deep_orange,
                                    fontSize: 17,
                                  ),
                                ),
                                    ),
                                  ]),
                                          ),
                                     const Expanded(
                                    child: TabBarView(
                                  children: [

                                    Home(),
                                    HomeThree(),
                                    HomeTow()
                                  ],
                                )),
                                        ],
                                      ),




                                      ),
                              ),
                            ),
                          ],
                        ),


           ),);
  }
}

    
