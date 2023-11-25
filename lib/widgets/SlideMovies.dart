import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Slide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        height: 600,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
      ),
      items: [
        for (int i = 1; i < 11; i++)
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "up$i");
            },
            child: Container(
              margin: EdgeInsets.all(6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                // child: Stack(
                //   children: [
                child: Image.asset(
                  'images/up/up$i.jpg',
                  // width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                //   ],
                // ),
              ),
            ),
          )
      ],
    );
  }
}
