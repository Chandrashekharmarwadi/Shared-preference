import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpref/Home%20Screen.dart';
import 'package:sharedpref/LoginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:3), () {
      whereToGo();
    });
  }
  whereToGo() async{
    var prefs = await SharedPreferences.getInstance();
   bool? isLogin =  prefs.getBool("isLogin");
    if(isLogin!=null){
      if(isLogin){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
      }
      else{
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
      }

    }
    else{
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Splash Screen"),
      //   centerTitle: true,
      //   backgroundColor: Colors.orange,
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Icon(Icons.person,size: 300,color: Colors.greenAccent,),
          )
        ],
      ),
    );
  }
}
