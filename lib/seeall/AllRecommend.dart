import 'package:flutter/material.dart';

class AllRecommend extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: GridView.count(
        padding: const EdgeInsets.all(16.0),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        crossAxisCount: 4, // 2 columns, you can adjust this value
        children: <Widget>[
          for (int i = 1; i < 11; i++)
            Container(
              margin: EdgeInsets.all(6),
              child: AspectRatio(
                aspectRatio: 2 / 3, // Adjust this aspect ratio as needed
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'images/up$i.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}