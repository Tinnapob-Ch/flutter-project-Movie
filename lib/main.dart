import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:movie_app/pages/HomePage.dart';
import 'package:movie_app/pages/MemberPage.dart';
import 'package:movie_app/pages/TextPage.dart';
import 'package:movie_app/search/Search.dart';
import 'package:movie_app/seeall/AllNewMovies.dart';
import 'package:movie_app/seeall/AllUpComing.dart';
import 'movies/10Mulan.dart';
import 'movies/11Titanic.dart';
import 'movies/12BabyDrive.dart';
import 'movies/13ShagChi.dart';
import 'movies/14JungleCruise.dart';
import 'movies/15Aladdin.dart';
import 'movies/16Realsteel.dart';
import 'movies/7Battleship.dart';
import 'movies/8OnePiece.dart';
import 'movies/9Fantastic.dart';
import 'newmovies/1JohnWick.dart';
import 'newmovies/2FastX.dart';
import 'newmovies/3Meg2.dart';
import 'newmovies/4Barbie.dart';
import 'newmovies/5Oppenheimer.dart';
import 'newmovies/6TheLittleMermaid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
 
  void initState() {
   
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

 
  // @override
  // void initState() {
  //   super.initState();
  //     SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  //   // ตั้งค่าระบบ UI Mode ให้เป็น immersiveSticky ที่นี่
  
    
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      routes: {
        "/": (context) => TextPage(),
        "MovingText": (context) => TextPage(),
        "Homepage": (context) => HomePage(),
        "members": (context) => MembersPage(),
        "Search": (context) => SearchPage(),
        "allnew": (context) => AllNewMovies(),
        "allmovie": (context) => AllUpComing(),
      
     
        "new1": (context) => JohnWick(callback: () {},),
        "new2": (context) => Fast(callback: () {},),
        "new3": (context) => Meg(callback: () {},),
        "new4": (context) => Barbie(callback: () {},),
        "new5": (context) => Opper(callback: () {},),
        "new6": (context) => Mermaid(callback: () {},),
        "up1": (context) => Battle(callback: () {},),
        "up2": (context) => OnePiece(callback: () {},),
        "up3": (context) => Fantastic(callback: () {},),
        "up4": (context) => Mulan(callback: () {},),
        "up5": (context) => Titanic(callback: () {},),
        "up6": (context) => Baby(callback: () {},),
        "up7": (context) => ShagChi(callback: () {},),
        "up8": (context) => Jungle(callback: () {},),
        "up9": (context) => Aladdin(callback: () {},),
        "up10": (context) => Realsteel(callback: () {},),
      },
    );
  }
}
