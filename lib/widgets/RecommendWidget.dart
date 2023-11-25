import 'package:flutter/material.dart';
import 'package:movie_app/newmovies/1JohnWick.dart';
import 'package:movie_app/seeall/AllNewMovies.dart';

class RecommendWidget extends StatefulWidget {
  @override
  State<RecommendWidget> createState() => _RecommendWidgetState();
}

class _RecommendWidgetState extends State<RecommendWidget> {
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
            Text("Recommend",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500)),
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
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "images/new/new$i.jpg",
              height: 200,
              width: 150,
              fit: BoxFit.cover,
              ),
          ),
          ),)
          ],
        ),
      ),
    ]);
  }
}
