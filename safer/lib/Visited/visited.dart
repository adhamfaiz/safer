import 'package:flutter/material.dart';
import 'package:safer/colors/AppColor.dart';
import 'package:safer/pages/Home/home.dart';

import '../mybutton/mybutton.dart';

class Visited extends StatefulWidget {
  const Visited({Key? key}) : super(key: key);

  @override
  State<Visited> createState() => _VisitedState();
}

class _VisitedState extends State<Visited> {
  Widget headerBuild() {
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
                onPressed: () {},
              )),
          const Flexible(child: Text("")),
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

  final GlobalKey<ScaffoldState> _keyDrawer = GlobalKey<ScaffoldState>();
  List tabs = [
    "رائج",
    "أثري",
    "سياحي",
  ];
  List category = [
    {"name": 'فندق البيك', "images": 'assets/images/12.jpg'},
    {"name": 'فندق السعيد', "images": 'assets/images/13.jpg'},
    {"name": 'فندق الحميد', "images": 'assets/images/13.jpg'},
    {"name": 'فندق تاج سبا', "images": 'assets/images/12.jpg'},
    {"name": 'فندق فايف ستارز', "images": 'assets/images/12.jpg'},
    {"name": 'sss', "images": 'assets/images/11.jpg'},
  ];
  List prodect = [
    {
      "name": 'فندق بن الحميد',

      "images": 'assets/images/12.jpg'
    },
    {
      "name": 'فندق تاج سبا',

      "images": 'assets/images/12.jpg'
    },
    {
      "name": 'فندق البيك',

      "images": 'assets/images/13.jpg'
    },
    {
      "name": 'فندق السعيد',

      "images": 'assets/images/13.jpg'
    },
    {
      "name": 'فندق السعيد',

      "images": 'assets/images/13.jpg'
    },
    {
      "name": 'فندق السعيد',

      "images": 'assets/images/13.jpg'
    },

  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _keyDrawer,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Column(
             mainAxisSize: MainAxisSize.min,
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              drwer(),
              DefaultTabController(
               length: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Container(
                     margin: EdgeInsets.only(right: 10),
                     child: Text("الترشيحات",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Lateef-Regular',
                                color: AppColors.deep_orange,
                                fontSize: 30)),
                   ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Stack(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Flexible(
                      child: Container(
                        height: 150,
                        width: double.infinity,

                        child: Flexible(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: category.length,
                        
                            itemBuilder: (context, index) {
                              return Container(
                                child: Stack(
                                  children: [
                        
                                    Flexible(
                                      child: Container(
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
                                            image:AssetImage( category[index]["images"]) )
                                        ),
                                        
                                      child: 
                                        Container(
                                          margin: EdgeInsets.only(top:100,left: 60),
                                        child: Text(
                                          
                                          category[index]["name"],
                                          style: TextStyle(
                                              color: AppColors.deep_orange,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      ),
                                    ),



                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              Container(
                margin: const EdgeInsets.only(
                  right: 10,
                  left: 250,
                ),
                padding: const EdgeInsets.only(left: 20, right: 10),
                decoration: const BoxDecoration(),
                child: Container(
                  child: Row(
                    children: [
                      Text("الاكثر زيارة",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lateef-Regular',
                              color: Colors.yellow.shade700,
                              fontSize: 30)),
                    ],
                  ),
                ),
              ),
              Container(
                height: 500,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: prodect.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 10),
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
                                 color: Colors.black26, width: 0),
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
                                        color: Colors.orange, width: 1),
                                    color: Colors.black26,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          prodect[index]["images"],
                                        ))),
                              ),
                              // text Container
                              Flexible(
                                child: Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(left: 150),
                                        child: Text(
                                          prodect[index]["name"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Lateef-Regular',
                                            color: Colors.yellow.shade700,
                                            fontSize: 20,
                                          ),
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
                                                color: Colors.black26,width: 1),
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
                      );
                    }),
              ),
              
                                      Container(
                    margin: EdgeInsets.only(right: 300,bottom: 10),
                    child: butoonrev(txt: "تجاوز",function: ()
                    {
                       Navigator.of(context).pushReplacementNamed("hotedetels");
                    },))
            ],
          ),
        ),
      ),
    );
  }
}


