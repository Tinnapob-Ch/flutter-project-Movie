import 'package:flutter/material.dart';
import 'package:movie_app/newmovies/1JohnWick.dart';
import 'package:movie_app/seeall/AllNewMovies.dart';

class NewMoviesWidget extends StatefulWidget {
  @override
  State<NewMoviesWidget> createState() => _NewMoviesWidgetState();
}

class _NewMoviesWidgetState extends State<NewMoviesWidget> {
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
            Text("New Movies",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500)),
           InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, "allnew");
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
            for (int i = 1; i < 7; i++)
              InkWell(
                  onTap: () {
                    setState(() {
                       if (i == 1) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => JohnWick(
                                    callback: () {},
                                  )));
                    } else {
                      Navigator.pushNamed(context, "new$i");
                    }
                    });
                   
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'images/new/new$i.jpg',
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
