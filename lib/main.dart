
// import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(
//     home: SplashScreen(),
    
//   ));
// }

// class SplashScreen  extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar( title: const  Text("My Application",), ),
//       //body: Center(child:Icon(Icons.accessibility_new_sharp, size: 50, color: Colors.red,) ),
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         //color: Colors.yellow,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             fit: BoxFit.fill,
//             image: AssetImage("assets/images/background1.jpeg"))
//         ),
//         child: Center(

//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children:const [
//               // Icon(Icons.ac_unit,
//               // size: 100,),
//               //Asset image
//              Image(image: AssetImage("assets/icons/home.png"),width: 200,height: 200,),
//               //Image(image: NetworkImage("https://images.pexels.com/photos/66997/pexels-photo-66997.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),width: 400,height: 400,),

//               Text("MY APPLICATION",
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

// }


import 'dart:async';
import 'package:device_preview/device_preview.dart';
import 'package:fluter_december/Gridview_assignment2.dart';
import 'package:fluter_december/costomlist.dart';
import 'package:fluter_december/faicon.dart';
import 'package:fluter_december/grid_with_builder.dart';
import 'package:fluter_december/gridviewassignment.dart';
import 'package:fluter_december/gridviewdemo.dart';
import 'package:fluter_december/gridwithcount.dart';
import 'package:fluter_december/listdemo.dart';
import 'package:fluter_december/lottieanimation.dart';
import 'package:fluter_december/phonelist.dart';
import 'package:fluter_december/placelist.dart';
import 'package:fluter_december/productlist.dart';
import 'package:fluter_december/second.dart';
import 'package:fluter_december/signup_confirmpass.dart';
import 'package:fluter_december/snackdemo.dart';
import 'package:fluter_december/tab_in_flutter.dart';
import 'package:fluter_december/whatsapp_UI/mainpage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'Geidview_Costom.dart';
import 'GirdView_extend.dart';
import 'listview_builder.dart';
import 'listview_seprated.dart';
import 'loginpage.dart';

void main(){
  runApp(DevicePreview(builder: (context){
    enabled: !kReleaseMode;
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: Color(0XFF2E7D32))
      ),
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: SplashScreen(),);
    
  }));
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    
    Timer(Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>WhatsAppMainPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MY APPLICATION")),
      // body:const Center(child: Image(image: AssetImage("assets/icons/home.png"),height: 200,width: 200,),
      // ),
      body: Container( 
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/background1.jpeg"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(image: AssetImage("assets/icons/home.png"),height: 200,width: 200,),
              Text("MY APPLICATON",style: TextStyle(fontSize: 40,color: Color.fromARGB(255, 1, 33, 59)),),
            ],
          ),
        ),
      ),
    );
  }
}

class GridViewExampley {
}