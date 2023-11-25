import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/CustomerNavBar.dart';
import '../widgets/RecommendWidget.dart';

class Barbie extends StatefulWidget {
  final Function() callback;
  const Barbie({Key? key, required this.callback}) : super(key: key);

  @override
  State<Barbie> createState() => _BarbieState();
}

class _BarbieState extends State<Barbie> {

  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  bool isMuted = false;
  bool isPlayVideo = true;
  bool isFavorited = false;
  bool isAdd = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/Barbie.mp4');
    _controller.setLooping(true);
    _controller.play();
    _initializeVideoPlayerFuture = _controller.initialize();
    getPreference();
  }

  @override
  void dispose() {
    _controller.dispose();
    widget.callback();
    super.dispose();
  }

void toggleFavorite() {
  setState(() {
    isFavorited = !isFavorited;
    saveValues(isAdd, isFavorited);
  });
}

void toggleAdd() {
  setState(() {
    isAdd = !isAdd;
    saveValues(isAdd, isFavorited);
  });
}

  Future<void> getPreference() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isAdd = prefs.getBool('ADD_MOVIE4') ?? false;
      isFavorited = prefs.getBool('FAV_MOVIE4') ?? false;
      
    });
  }
 
  Future<void> saveValues(bool add, bool fav) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('FAV_MOVIE4', fav);
    await prefs.setBool('ADD_MOVIE4', add);
    await prefs.setString('NAME_MOVIE4', 'Barbie');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar: CustomNavbar(),
       body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 480),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " Barbie",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "images/new/new4.jpg",
                          height: 250,
                          width: 180,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                          child: Text(
                            "        Barbie ฉบับ Live-Action มาพร้อมคำโปรยที่ว่า “การใช้ชีวิตในบาร์บี้แลนด์คือการมีชีวิตที่สมบูรณ์แบบในสถานที่ที่สมบูรณ์แบบ เว้นแต่คุณจะมีปัญหาทางอารมณ์หรือว่าคุณคือเคน” เป็นเรื่องาวเกี่ยวกับ บาร์บี้ และ เคน ที่ใช้ชีวิตอยู่โลกห่งสีสันคัลเลอร์ฟูลและดูเหมือนว่าจะเป็นโลกที่สุดแสนจะสมบูรณ์แบบไปหมด ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Text(
                      "แต่เมื่อเขาทั้งสองคนได้มาเยือนโลกแห่งความเป็นจริง ทั้งคู่จึงได้เรียนรู้ประสบการณ์ในชีวิตรูปแบบใหม่ที่มีทั้งความสุขสนุกสนานและเผลิญภยันอันตรายต่างๆ ในการเป็นได้ใช้ชีวิตร่วมกับเหล่ามนุษย์",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(height: 10),
                  RecommendWidget(),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: FutureBuilder(
                            future: _initializeVideoPlayerFuture,
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.done) {
                                return AspectRatio(
                                  aspectRatio: _controller.value.aspectRatio,
                                  child: VideoPlayer(_controller),
                                );
                              } else {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 16, right: 16, top: 130),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 8,
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(right: 50, top: 100),
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.red,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.red.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 8,
                                        ),
                                      ],
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (_controller.value.isPlaying) {
                                            _controller.pause();
                                            isPlayVideo = false;
                                          } else {
                                            _controller.play();
                                            isPlayVideo = true;
                                          }
                                        });
                                      },
                                      icon: Icon(
                                        isPlayVideo
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        size: 50,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 80),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      margin: EdgeInsets.only(right: 40),
                                      decoration: BoxDecoration(
                                        color: Color(0xff292b37),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFF292B37)
                                                .withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 4,
                                          ),
                                        ],
                                      ),
                                      child: InkResponse(
                                        onTap: toggleAdd,
                                        child: Icon(
                                          isAdd ? Icons.check : Icons.add,
                                          color: isAdd
                                              ? Colors.green
                                              : Colors.white,
                                          size: 35,
                                        ),
                                      )),
                                  Container(
                                      padding: const EdgeInsets.all(10),
                                      margin: const EdgeInsets.only(right: 40),
                                      decoration: BoxDecoration(
                                        color: Color(0xff292b37),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFF292B37)
                                                .withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 4,
                                          ),
                                        ],
                                      ),
                                      child: InkResponse(
                                        onTap: toggleFavorite,
                                        child: Icon(
                                          isFavorited
                                              ? Icons.favorite_rounded
                                              : Icons.favorite_border,
                                          color: isFavorited
                                              ? Colors.red
                                              : Colors.white,
                                          size: 35,
                                        ),
                                      )),
                                   const Column(
                                     children: [
                                       Padding(
                                         padding: EdgeInsets.symmetric(
                                             horizontal: 10, vertical: 10),
                                         child: Text(
                                           "IMDb RATING",
                                           style: TextStyle(
                                             color: Colors.white,
                                             fontSize: 15,
                                             fontWeight: FontWeight.w700
                                           ),
                                           textAlign: TextAlign.start,
                                         ),
                                       ),
                                       Row(
                                         children: [
                                           Icon(
                                             Icons.star,
                                             color: Colors.yellow,
                                             size: 20, // ปรับขนาดของไอคอน
                                           ),
                                           Icon(
                                             Icons.star,
                                             color: Colors.yellow,
                                             size: 20, // ปรับขนาดของไอคอน
                                           ),
                                           Icon(
                                             Icons.star,
                                             color: Colors.yellow,
                                             size: 20, // ปรับขนาดของไอคอน
                                           ),
                                           Icon(
                                             Icons.star_half,
                                             color: Colors.yellow,
                                             size: 20, // ปรับขนาดของไอคอน
                                           ),
                                           Icon(
                                             Icons.star_border,
                                             color: Colors.yellow,
                                             size: 20, // ปรับขนาดของไอคอน
                                           ),
                                           Padding(
                                             padding: EdgeInsets.symmetric(
                                                 horizontal: 10, vertical: 10),
                                             child: Text(
                                               "7.1/10",
                                               style: TextStyle(
                                                 color: Colors.white,
                                                 fontSize: 15,
                                               ),
                                               textAlign: TextAlign.start,
                                             ),
                                           ),
                                         ],
                                       ),
                                     ],
                                   ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}