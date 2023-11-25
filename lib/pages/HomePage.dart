import 'package:flutter/material.dart';
import 'package:movie_app/Login/LoginScreen.dart';
import 'package:movie_app/search/Search.dart';
import 'package:movie_app/widgets/FavoritePage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../widgets/AddedMovie.dart';
import '../widgets/CustomerNavBar.dart';
import '../widgets/NewMoviesWidget.dart';
import '../widgets/MoviesWidget.dart';
import '../widgets/SlideMovies.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();

  void logout() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.clear();
  // เรียกดูหน้าจอเข้าสู่ระบบ
}
}

class _HomePageState extends State<HomePage> {
  bool isAdd = false;
  bool isFavorited = false;
  String nameMovie = "";

  bool isAddFast = false;
  String nameMovieFast = "";
  bool isFavorited2 = false;

  bool isAddMeg = false;
  String nameMovieMeg = "";
  bool isFavorited3 = false;

  bool isAddBarbie = false;
  String nameMovieBarbie = "";
bool isFavorited4 = false;
  
  bool isAddOpper = false;
  String nameMovieOpper = "";
  bool isFavorited5 = false;

  bool isAddMermaid = false;
  String nameMovieMermaid = "";
  bool isFavorited6 = false;

  bool isAddBattle = false;
  String nameMovieBattle = "";
  bool isFavorited7 = false;

  bool isAddOnePiece = false;
  String nameMovieOnePiece = "";
  bool isFavorited8 = false;

  bool isAddFantastic = false;
  String nameMovieFantastic = "";
  bool isFavorited9 = false;

  bool isAddMulan = false;
  String nameMovieMulan = "";
  bool isFavorited10 = false;

  bool isAddTitanic = false;
  String nameMovieTitanic = "";
  bool isFavorited11 = false;

  bool isAddBaby = false;
  String nameMovieBaby = "";
   bool isFavorited12 = false;

  bool isFavorited13 = false;
  bool isAddShagChi = false;
  String nameMovieShagChi = "";

  bool isFavorited14 = false;
  bool isAddJungle = false;
  String nameMovieJungle = "";

  bool isFavorited15 = false;
  bool isAddAladdin = false;
  String nameMovieAladdin = "";

  bool isFavorited16 = false;
  bool isAddRealsteel = false;
  String nameMovieRealsteel = "";
 
  @override
  void initState() {
    super.initState();
    getPreference();
  }

  Future<void> getPreference() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() { 
      isFavorited = prefs.getBool('FAV_MOVIE') ?? false;
      isAdd = prefs.getBool('ADD_MOVIE') ?? false;
      nameMovie = prefs.getString('NAME_MOVIE') ?? "";

      isFavorited2 = prefs.getBool('FAV_MOVIE2') ?? false;
      isAddFast = prefs.getBool('ADD_MOVIE2') ?? false;
      nameMovieFast = prefs.getString('NAME_MOVIE2') ?? "";

      isFavorited3 = prefs.getBool('FAV_MOVIE3') ?? false;
      isAddMeg = prefs.getBool('ADD_MOVIE3') ?? false;
      nameMovieMeg = prefs.getString('NAME_MOVIE3') ?? "";

      isFavorited4 = prefs.getBool('FAV_MOVIE4') ?? false;
      isAddBarbie = prefs.getBool('ADD_MOVIE4') ?? false;
      nameMovieBarbie = prefs.getString('NAME_MOVIE4') ?? "";

      isFavorited5 = prefs.getBool('FAV_MOVIE5') ?? false;
      isAddOpper = prefs.getBool('ADD_MOVIE5') ?? false;
      nameMovieOpper = prefs.getString('NAME_MOVIE5') ?? "";

      isFavorited6 = prefs.getBool('FAV_MOVIE6') ?? false;
      isAddMermaid = prefs.getBool('ADD_MOVIE6') ?? false;
      nameMovieMermaid = prefs.getString('NAME_MOVIE6') ?? "";

      isFavorited7 = prefs.getBool('FAV_MOVIE7') ?? false;
      isAddBattle = prefs.getBool('ADD_MOVIE7') ?? false;
      nameMovieBattle = prefs.getString('NAME_MOVIE7') ?? "";

      isFavorited8 = prefs.getBool('FAV_MOVIE8') ?? false;
      isAddOnePiece = prefs.getBool('ADD_MOVIE8') ?? false;
      nameMovieOnePiece = prefs.getString('NAME_MOVIE8') ?? "";

      isFavorited9 = prefs.getBool('FAV_MOVIE9') ?? false;
      isAddFantastic = prefs.getBool('ADD_MOVIE9') ?? false;
      nameMovieFantastic = prefs.getString('NAME_MOVIE9') ?? "";

      isFavorited10 = prefs.getBool('FAV_MOVIE10') ?? false;
      isAddMulan = prefs.getBool('ADD_MOVIE10') ?? false;
      nameMovieMulan = prefs.getString('NAME_MOVIE10') ?? "";

      isFavorited11 = prefs.getBool('FAV_MOVIE11') ?? false;
      isAddTitanic = prefs.getBool('ADD_MOVIE11') ?? false;
      nameMovieTitanic = prefs.getString('NAME_MOVIE11') ?? "";

      isFavorited12 = prefs.getBool('FAV_MOVIE12') ?? false;
      isAddBaby = prefs.getBool('ADD_MOVIE12') ?? false;
      nameMovieBaby = prefs.getString('NAME_MOVIE12') ?? "";

       isFavorited13 = prefs.getBool('FAV_MOVIE13') ?? false;
      isAddShagChi = prefs.getBool('ADD_MOVIE13') ?? false;
      nameMovieShagChi = prefs.getString('NAME_MOVIE13') ?? "";

       isFavorited14 = prefs.getBool('FAV_MOVIE14') ?? false;
      isAddJungle = prefs.getBool('ADD_MOVIE14') ?? false;
      nameMovieJungle = prefs.getString('NAME_MOVIE14') ?? "";

       isFavorited15 = prefs.getBool('FAV_MOVIE15') ?? false;
      isAddAladdin = prefs.getBool('ADD_MOVIE15') ?? false;
      nameMovieAladdin = prefs.getString('NAME_MOVIE15') ?? "";

       isFavorited16 = prefs.getBool('FAV_MOVIE16') ?? false;
      isAddRealsteel = prefs.getBool('ADD_MOVIE16') ?? false;
      nameMovieRealsteel = prefs.getString('NAME_MOVIE16') ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 25,
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: const Text(
                          "'S", // เปลี่ยนข้อความตรงนี้ตามที่คุณต้องการ
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                    ),
                    SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello", // เปลี่ยนข้อความตรงนี้ตามที่คุณต้องการ
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "What movie do you want to watch?", // เปลี่ยนข้อความตรงนี้ตามที่คุณต้องการ
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        ),

                      ],
                    ),
                     SizedBox(width: 30),
                   TextButton(
                      onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen(
                                   
                                  )));
                      },
                      child: Text(
                        "Logout",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 143, 21, 21),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        overlayColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                        ),
                        shadowColor: MaterialStateProperty.all(
                          Colors.red.withOpacity(0.1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
  width: 350,
  height: 60,
              child: TextButton(
                      onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchPage()));
                      },
                      child: const Row(
                        children: [
                           SizedBox(width: 10),
                                    Icon(Icons.search,color: Color.fromARGB(255, 60, 57, 63)),
                                   
                                    SizedBox(width: 5),
                          Text(
                            "Search",
                            style: TextStyle(
                              color: Color.fromARGB(255, 60, 57, 63)
                            ),
                          ),
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 160, 155, 155),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                       
                      ),
                    ),),


              SizedBox(height: 20),
              Slide(),
              SizedBox(height: 20),
              NewMoviesWidget(),
              SizedBox(height: 30),
              AddedMovie(
                isAdd: isAdd,
                nameMovie: nameMovie,
                nameMovieFast: nameMovieFast,
                isAddFast: isAddFast,
                isAddMeg: isAddMeg,
                nameMovieMeg: nameMovieMeg,
                isAddBarbie: isAddBarbie,
                nameMovieBarbie: nameMovieBarbie,
                nameMovieOpper: nameMovieOpper,
                isAddOpper: isAddOpper,
                isAddMermaid: isAddMermaid,
                nameMovieMermaid: nameMovieMermaid,
                isAddBattle: isAddBattle,
                nameMovieBattle: nameMovieBattle,
                isAddOnePiece: isAddOnePiece,
                nameMovieOnePiece: nameMovieOnePiece,
                isAddFantastic: isAddFantastic,
                nameMovieFantastic: nameMovieFantastic,
                isAddMulan: isAddMulan,
                nameMovieMulan: nameMovieMulan,
                isAddTitanic: isAddTitanic,
                nameMovieTitanic: nameMovieTitanic,
                isAddBaby: isAddBaby,
                nameMovieBaby: nameMovieBaby,
                isAddShagChi: isAddShagChi,
                nameMovieShagChi: nameMovieShagChi,
                isAddAladdin: isAddAladdin,
                isAddJungle: isAddJungle,
                isAddRealsteel: isAddRealsteel,
                nameMovieAladdin: nameMovieAladdin,
                nameMovieJungle: nameMovieJungle,
                nameMovieRealsteel: nameMovieRealsteel,
              ),
              SizedBox(height: 30),
              Favorited(
                isFavorited: isFavorited,
                nameMovie: nameMovie,
                nameMovieFast: nameMovieFast,
                isFavorited2: isFavorited2,
                isFavorited3: isFavorited3,
                nameMovieMeg: nameMovieMeg,
                isFavorited4: isFavorited4,
                nameMovieBarbie: nameMovieBarbie,
                nameMovieOpper: nameMovieOpper,
                 isFavorited5: isFavorited5,
                isFavorited6: isFavorited6,
                nameMovieMermaid: nameMovieMermaid,

                isFavorited7: isFavorited7,
                nameMovieBattle: nameMovieBattle,
                isFavorited8: isFavorited8,
                nameMovieOnePiece: nameMovieOnePiece,
                isFavorited9: isFavorited9,
                nameMovieFantastic: nameMovieFantastic,
                 isFavorited10: isFavorited10,
                nameMovieMulan: nameMovieMulan,
                isFavorited11: isFavorited11,
                nameMovieTitanic: nameMovieTitanic,
                isFavorited12: isFavorited12,
                nameMovieBaby: nameMovieBaby,
                isFavorited13: isFavorited13,
                nameMovieShagChi: nameMovieShagChi,
               isFavorited14: isFavorited14,
               isFavorited15: isFavorited15,
               isFavorited16: isFavorited16,
                nameMovieAladdin: nameMovieAladdin,
                nameMovieJungle: nameMovieJungle,
                nameMovieRealsteel: nameMovieRealsteel,
              ),
              SizedBox(height: 20),
              MoviesWidget(),
              SizedBox(height: 20),
     ] )),
     
    ), 
    bottomNavigationBar: CustomNavbar(),
    );
        
      
    
  }
}
