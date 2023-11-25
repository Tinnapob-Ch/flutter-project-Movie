import 'package:flutter/material.dart';

class Favorited extends StatefulWidget {
  final bool isFavorited;
  final String nameMovie;
 final bool isFavorited2;
  final String nameMovieFast;
  final bool isFavorited3;
  final String nameMovieMeg;
 final bool isFavorited4;
  final String nameMovieBarbie;
  final bool isFavorited5;
  final String nameMovieOpper;
  final bool isFavorited6;
  final String nameMovieMermaid;
  final bool isFavorited7;
  final String nameMovieBattle;
  final bool isFavorited8;
  final String nameMovieOnePiece;
  final bool isFavorited9;
  final String nameMovieFantastic;
 final bool isFavorited10;
  final String nameMovieMulan;
  final bool isFavorited11;
  final String nameMovieTitanic;
  final bool isFavorited12;
  final String nameMovieBaby;
  final bool isFavorited13;
  final String nameMovieShagChi;

  final bool isFavorited14;
  final String nameMovieJungle;
  final bool isFavorited15;
  final String nameMovieAladdin;
  final bool isFavorited16;
  final String nameMovieRealsteel;

  const Favorited({
    Key? key,
    required this.isFavorited,
    required this.nameMovie,
    required this.nameMovieFast,
     required this.isFavorited2,
    required this.nameMovieMeg,
      required this.isFavorited3,
    required this.isFavorited4,
    required this.nameMovieBarbie,
    required this.isFavorited5,
    required this.nameMovieOpper,
    required this.isFavorited6,
    required this.nameMovieMermaid,
    required this.isFavorited7,
    required this.nameMovieBattle,
    required this.isFavorited8,
    required this.nameMovieOnePiece,
    required this.isFavorited9,
    required this.nameMovieFantastic,
    required this.isFavorited10,
    required this.nameMovieMulan,
    required this.isFavorited11,
    required this.nameMovieTitanic,
    required this.isFavorited12,
    required this.nameMovieBaby,
     required this.isFavorited13,
    required this.nameMovieShagChi,
     required this.isFavorited14,
    required this.nameMovieJungle,
     required this.isFavorited15,
    required this.nameMovieAladdin,
     required this.isFavorited16,
    required this.nameMovieRealsteel,
  }) : super(key: key);

  @override
  State<Favorited> createState() => _FavoritedState();
}

class _FavoritedState extends State<Favorited> {
  @override
  Widget build(BuildContext context) {
    return widget.isFavorited||
    widget.isFavorited2 ||
    widget.isFavorited3 ||
    widget.isFavorited4 ||
    widget.isFavorited5 ||
    widget.isFavorited6 ||
    widget.isFavorited7 ||
    widget.isFavorited8 ||
    widget.isFavorited9 ||
    widget.isFavorited10 ||
    widget.isFavorited11 ||
    widget.isFavorited12 ||
    widget.isFavorited13 ||
    widget.isFavorited14 ||
    widget.isFavorited15 ||
    widget.isFavorited16
    
        ? Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("MYFAVORITE",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                    
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        for (int i = 1; i < 18; i++)
                          widget.nameMovie == 'John Wick' &&
                                  i == 1 &&
                                  widget.isFavorited
                              ? InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, "new1");
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(
                                        'images/new/new1.jpg',
                                        height: 300,
                                        width: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ))
                              : widget.nameMovieFast == 'FastX' &&
                                      i == 2 &&
                                      widget.isFavorited2
                                  ? InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(context, "new2");
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image.asset(
                                            'images/new/new2.jpg',
                                            height: 300,
                                            width: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ))
                                  : widget.nameMovieMeg == 'Meg2' &&
                                          i == 3 &&
                                          widget.isFavorited3
                                      ? InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, "new3");
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              child: Image.asset(
                                                'images/new/new3.jpg',
                                                height: 300,
                                                width: 200,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ))
                                      : widget.nameMovieBarbie == 'Barbie' &&
                                              i == 4 &&
                                               widget.isFavorited4
                                          ? InkWell(
                                              onTap: () {
                                                Navigator.pushNamed(
                                                    context, "new4");
                                              },
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  child: Image.asset(
                                                    'images/new/new4.jpg',
                                                    height: 300,
                                                    width: 200,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ))
                                          : widget.nameMovieOpper ==
                                                      'Oppenheimer' &&
                                                  i == 5 &&
                                                  widget.isFavorited5
                                              ? InkWell(
                                                  onTap: () {
                                                    Navigator.pushNamed(
                                                        context, "new5");
                                                  },
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      child: Image.asset(
                                                        'images/new/new5.jpg',
                                                        height: 300,
                                                        width: 200,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ))
                                              : widget.nameMovieMermaid ==
                                                          'Mermaid' &&
                                                      i == 6 &&
                                                       widget.isFavorited6
                                                  ? InkWell(
                                                      onTap: () {
                                                        Navigator.pushNamed(
                                                            context, "new6");
                                                      },
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                          child: Image.asset(
                                                            'images/new/new6.jpg',
                                                            height: 300,
                                                            width: 200,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ))
                                                  : widget.nameMovieBattle ==
                                                              'Bat' &&
                                                          i == 7 &&
                                                         widget.isFavorited7
                                                      ? InkWell(
                                                          onTap: () {
                                                            Navigator.pushNamed(
                                                                context, "up1");
                                                          },
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 10),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15),
                                                              child:
                                                                  Image.asset(
                                                                'images/up/up1.jpg',
                                                                height: 300,
                                                                width: 200,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ))
                                                      : widget.nameMovieOnePiece ==
                                                                  'OnePiece' &&
                                                              i == 8 &&
                                                            widget.isFavorited8
                                                          ? InkWell(
                                                              onTap: () {
                                                                Navigator
                                                                    .pushNamed(
                                                                        context,
                                                                        "up2");
                                                              },
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            10),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              15),
                                                                  child: Image
                                                                      .asset(
                                                                    'images/up/up2.jpg',
                                                                    height: 300,
                                                                    width: 200,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ))
                                                          : widget.nameMovieFantastic ==
                                                                      'Fantastic' &&
                                                                  i == 9 &&
                                                                widget.isFavorited9
                                                              ? InkWell(
                                                                  onTap: () {
                                                                    Navigator.pushNamed(
                                                                        context,
                                                                        "up3");
                                                                  },
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                            left:
                                                                                10),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              15),
                                                                      child: Image
                                                                          .asset(
                                                                        'images/up/up3.jpg',
                                                                        height:
                                                                            300,
                                                                        width:
                                                                            200,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ))
                                                              : widget.nameMovieMulan ==
                                                                          'Mulan' &&
                                                                      i == 10 &&
                                                                    widget.isFavorited10
                                                                  ? InkWell(
                                                                      onTap:
                                                                          () {
                                                                        Navigator.pushNamed(
                                                                            context,
                                                                            "up4");
                                                                      },
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.only(left: 10),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(15),
                                                                          child:
                                                                              Image.asset(
                                                                            'images/up/up4.jpg',
                                                                            height:
                                                                                300,
                                                                            width:
                                                                                200,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ))
                                                                  : widget.nameMovieTitanic =='Titanic' &&i == 11 &&
                                                                       widget.isFavorited11
                                                                      ? InkWell(
                                                                          onTap: () {
                                                                            Navigator.pushNamed(context,
                                                                                "up5");
                                                                          },
                                                                          child: Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 10),
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(15),
                                                                              child: Image.asset(
                                                                                'images/up/up5.jpg',
                                                                                height: 300,
                                                                                width: 200,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ))
                                                                      : widget.nameMovieBaby == 'Baby Drive' && i == 12 && widget.isFavorited12
                                                                          ? InkWell(
                                                                              onTap: () {
                                                                                Navigator.pushNamed(context, "up6");
                                                                              },
                                                                              child: Padding(
                                                                                padding: EdgeInsets.only(left: 10),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(15),
                                                                                  child: Image.asset(
                                                                                    'images/up/up6.jpg',
                                                                                    height: 300,
                                                                                    width: 200,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ))
                                                                          : widget.nameMovieShagChi == 'ShagChi' && i == 13 &&  widget.isFavorited13
                                                                              ? InkWell(
                                                                                  onTap: () {
                                                                                    Navigator.pushNamed(context, "up7");
                                                                                  },
                                                                                  child: Padding(
                                                                                    padding: EdgeInsets.only(left: 10),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(15),
                                                                                      child: Image.asset(
                                                                                        'images/up/up7.jpg',
                                                                                        height: 300,
                                                                                        width: 200,
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                  ))
                                                                              : widget.nameMovieJungle == 'Jungle Cruise' && i == 14 &&  widget.isFavorited14
                                                                                  ? InkWell(
                                                                                      onTap: () {
                                                                                        Navigator.pushNamed(context, "up8");
                                                                                      },
                                                                                      child: Padding(
                                                                                        padding: EdgeInsets.only(left: 10),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(15),
                                                                                          child: Image.asset(
                                                                                            'images/up/up8.jpg',
                                                                                            height: 300,
                                                                                            width: 200,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ))
                                                                                  : widget.nameMovieAladdin == 'Aladdin' && i == 15 &&  widget.isFavorited15
                                                                                      ? InkWell(
                                                                                          onTap: () {
                                                                                            Navigator.pushNamed(context, "up9");
                                                                                          },
                                                                                          child: Padding(
                                                                                            padding: EdgeInsets.only(left: 10),
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(15),
                                                                                              child: Image.asset(
                                                                                                'images/up/up9.jpg',
                                                                                                height: 300,
                                                                                                width: 200,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ))
                                                                                      : widget.nameMovieRealsteel == 'Real Steel' && i == 16 &&  widget.isFavorited16
                                                                                          ? InkWell(
                                                                                              onTap: () {
                                                                                                Navigator.pushNamed(context, "up10");
                                                                                              },
                                                                                              child: Padding(
                                                                                                padding: EdgeInsets.only(left: 10),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(15),
                                                                                                  child: Image.asset(
                                                                                                    'images/up/up10.jpg',
                                                                                                    height: 300,
                                                                                                    width: 200,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ))
                                                                                          : Container()
                      ]),
                ),
              )
            ],
          )
        : Container();
  }
}
