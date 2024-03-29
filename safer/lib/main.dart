// ignore_for_file: unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safer/VistCard/Card.dart';
import 'package:safer/VistCard/Payment.dart';
import 'package:safer/crteatacount/Rigester.dart';
import 'package:safer/local/local.dart';
import 'package:safer/pages/Home/home.dart';
import 'package:safer/pages/sliderintro.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:safer/splashscreen.dart';
import 'Cars/CarHome.dart';
import 'Cars/CompanyCra.dart';
import 'Visited/visited.dart';
import 'crteatacount/login.dart';
import 'hotel/hotel.dart';
import 'local/local_contorollr.dart';
import 'mybutton/vistDetels.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
     var user =FirebaseAuth.instance.currentUser;
  bool islogin;
  if(user==null)
  {
    islogin=false;
  }else{
    islogin=true;
  }
    Get.put(Melocalcontrollr());
    return GetMaterialApp(
      
        debugShowCheckedModeBanner: false,
        translations: Mylocal(),
        locale: Get.deviceLocale,
        home:  /*islogin==false?SliderIntro():*/const Homes(),
        routes: {
          "home": (context) => const Homes(),
          "login": (context) =>  Login(),
          
          "slider": (context) => const SliderIntro(),
           "regster": (context) => const Register(),
           "myhome": (context) => const Myhome(),
            "cars": (context) => const Cars(),
            "visited": (context) => const Visited(),
             "homecar": (context) => const Travil(),
              "hotedetels": (context) => const Roomeshome(),
              "addcard": (context) => const AddCard(),
              "payment": (context) => const Payment(),
        });
  }
}
