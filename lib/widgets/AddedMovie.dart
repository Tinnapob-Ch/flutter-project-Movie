import 'package:flutter/material.dart';

class AddedMovie extends StatefulWidget {
  final bool isAdd;
  final String nameMovie;
  final bool isAddFast;
  final String nameMovieFast;
  final bool isAddMeg;
  final String nameMovieMeg;
  final bool isAddBarbie;
  final String nameMovieBarbie;
  final bool isAddOpper;
  final String nameMovieOpper;
  final bool isAddMermaid;
  final String nameMovieMermaid;
  final bool isAddBattle;
  final String nameMovieBattle;
  final bool isAddOnePiece;
  final String nameMovieOnePiece;
  final bool isAddFantastic;
  final String nameMovieFantastic;
  final bool isAddMulan;
  final String nameMovieMulan;
  final bool isAddTitanic;
  final String nameMovieTitanic;
  final bool isAddBaby;
  final String nameMovieBaby;
  final bool isAddShagChi;
  final String nameMovieShagChi;

  final bool isAddJungle;
  final String nameMovieJungle;
  final bool isAddAladdin;
  final String nameMovieAladdin;
  final bool isAddRealsteel;
  final String nameMovieRealsteel;

  const AddedMovie({
    Key? key,
    required this.isAdd,
    required this.nameMovie,
    required this.nameMovieFast,
    required this.isAddFast,
    required this.nameMovieMeg,
    required this.isAddMeg,
    required this.isAddBarbie,
    required this.nameMovieBarbie,
    required this.isAddOpper,
    required this.nameMovieOpper,
    required this.isAddMermaid,
    required this.nameMovieMermaid,
    required this.isAddBattle,
    required this.nameMovieBattle,
    required this.isAddOnePiece,
    required this.nameMovieOnePiece,
    required this.isAddFantastic,
    required this.nameMovieFantastic,
    required this.isAddMulan,
    required this.nameMovieMulan,
    required this.isAddTitanic,
    required this.nameMovieTitanic,
    required this.isAddBaby,
    required this.nameMovieBaby,
    required this.isAddShagChi,
    required this.nameMovieShagChi,
    required this.isAddJungle,
    required this.nameMovieJungle,
    required this.isAddAladdin,
    required this.nameMovieAladdin,
    required this.isAddRealsteel,
    required this.nameMovieRealsteel,
  }) : super(key: key);

  @override
  State<AddedMovie> createState() => _AddedMovieState();
}

class _AddedMovieState extends State<AddedMovie> {
  @override
  Widget build(BuildContext context) {
    return widget.isAdd ||
            widget.isAddFast ||
            widget.isAddMeg ||
            widget.isAddBarbie ||
            widget.isAddOpper ||
            widget.isAddMermaid ||
            widget.isAddBattle ||
            widget.isAddOnePiece ||
            widget.isAddFantastic ||
            widget.isAddMulan ||
            widget.isAddMulan ||
            widget.isAddBaby ||
            widget.isAddTitanic ||
            widget.isAddJungle ||
            widget.isAddAladdin ||
            widget.isAddRealsteel
        ? Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("MY LIST",
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
                                  widget.isAdd
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
                                      widget.isAddFast
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
                                          widget.isAddMeg
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
                                              widget.isAddBarbie
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
                                                  widget.isAddOpper
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
                                                      widget.isAddMermaid
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
                                                          widget.isAddBattle
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
                                                              widget
                                                                  .isAddOnePiece
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
                                                                  widget
                                                                      .isAddFantastic
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
                                                                      widget
                                                                          .isAddMulan
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
                                                                  : widget.nameMovieTitanic ==
                                                                              'Titanic' &&
                                                                          i ==
                                                                              11 &&
                                                                          widget
                                                                              .isAddTitanic
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
                                                                      : widget.nameMovieBaby == 'Baby Drive' && i == 12 && widget.isAddBaby
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
                                                                          : widget.nameMovieShagChi == 'ShagChi' && i == 13 && widget.isAddShagChi
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
                                                                              : widget.nameMovieJungle == 'Jungle Cruise' && i == 14 && widget.isAddJungle
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
                                                                                  : widget.nameMovieAladdin == 'Aladdin' && i == 15 && widget.isAddAladdin
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
                                                                                      : widget.nameMovieRealsteel == 'Real Steel' && i == 16 && widget.isAddRealsteel
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
