import 'package:flutter/material.dart';
import 'package:movie_app/movies/7Battleship.dart';
import 'package:movie_app/seeall/AllNewMovies.dart';

class MoviesWidget extends StatefulWidget {
  @override
  State<MoviesWidget> createState() => _MoviesWidgetState();
}

class _MoviesWidgetState extends State<MoviesWidget> {
  void _onSeeAllPressed(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AllNewMovies();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Movies",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500)),
            InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, "allmovie");
                                          },
              child: Text(
                "See All",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 15),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 1; i < 11; i++)
              InkWell(
                  onTap: () {
                    setState(() {
                       if (i == 1) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Battle(
                                    callback: () {},
                                  )));
                    } else {
                      Navigator.pushNamed(context, "up$i");
                    }
                    });
                   
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'images/up/up$i.jpg',
                        height: 300,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ))
          ],
        ),
      ),
    ]);
  }
}
