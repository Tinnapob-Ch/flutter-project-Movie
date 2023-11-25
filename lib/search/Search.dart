import 'package:flutter/material.dart';
import 'package:movie_app/search/movie_model.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  static List<MovieModel> main_movie_list = [
    MovieModel("Johnwick", "images/new/new1.jpg"),
    MovieModel("FastX", "images/new/new2.jpg"),
    MovieModel("Meg2", "images/new/new3.jpg"),
    MovieModel("Barbie", "images/new/new4.jpg"),
    MovieModel("Oppenheimer", "images/new/new5.jpg"),
    MovieModel("The Little Mermaid", "images/new/new6.jpg"),
    MovieModel("Battleship", "images/up/up1.jpg"),
    MovieModel("One Piece Film Gold", "images/up/up2.jpg"),
    MovieModel(
        "Fantastic Beasts \nand Where to Find Them", "images/up/up3.jpg"),
    MovieModel("Mulan", "images/up/up4.jpg"),
    MovieModel("Titanic", "images/up/up5.jpg"),
    MovieModel("Baby Drive", "images/up/up6.jpg"),
    MovieModel("ShagChi", "images/up/up7.jpg"),
    MovieModel("Jungle Cruise", "images/up/up8.jpg"),
    MovieModel("Aladdin", "images/up/up9.jpg"),
    MovieModel("Real Steel", "images/up/up10.jpg"),
  ];

  List<MovieModel> display_list = List.from(main_movie_list);
  void updateList(String value) {
    // function that will filter our list
    setState(() {
      display_list = main_movie_list
          .where((element) =>
              element.movieTitle!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: 
      Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text('Search',
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 22.0,
            //         fontWeight: FontWeight.bold)),
            // SizedBox(
            //   height: 20,
            // ),
            TextField(
              onChanged: (value) => updateList(
                  value), // ตรวจสอบว่ามีการเรียกใช้งาน updateList(value) ให้ถูกต้อง
              style: TextStyle(color: Color.fromARGB(255, 70, 63, 63)),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 160, 155, 155),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: const Color.fromARGB(255, 60, 57, 63),
                ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
                child: display_list.length == 0
                    ? Center(
                        child: Text(
                          "No results found",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    : ListView.builder(
                        itemCount: display_list.length,
                        itemBuilder: (context, index) {
                          final movie = display_list[index];
                          final movieTitle = movie.movieTitle;

                          return GestureDetector(
                              onTap: () {
                                if (movieTitle == "Johnwick") {
                                  Navigator.pushNamed(context, "new1");
                                } else if (movieTitle == "FastX") {
                                  Navigator.pushNamed(context, "new2");
                                } else if (movieTitle == "Meg2") {
                                  Navigator.pushNamed(context, "new3");
                                } else if (movieTitle == "Barbie") {
                                  Navigator.pushNamed(context, "new4");
                                } else if (movieTitle == "Oppenheimer") {
                                  Navigator.pushNamed(context, "new5");
                                } else if (movieTitle == "The Little Mermaid") {
                                  Navigator.pushNamed(context, "new6");
                                } else if (movieTitle == "Battleship") {
                                  Navigator.pushNamed(context, "up1");
                                } else if (movieTitle ==
                                    "One Piece Film Gold") {
                                  Navigator.pushNamed(context, "up2");
                                } else if (movieTitle ==
                                    "Fantastic Beasts \nand Where to Find Them") {
                                  Navigator.pushNamed(context, "up3");
                                } else if (movieTitle == "Mulan") {
                                  Navigator.pushNamed(context, "up4");
                                } else if (movieTitle == "Titanic") {
                                  Navigator.pushNamed(context, "up5");
                                } else if (movieTitle == "Baby Drive") {
                                  Navigator.pushNamed(context, "up6");
                                } else if (movieTitle == "ShagChi") {
                                  Navigator.pushNamed(context, "up7");
                                } else if (movieTitle == "Jungle Cruise") {
                                  Navigator.pushNamed(context, "up8");
                                } else if (movieTitle == "Aladdin") {
                                  Navigator.pushNamed(context, "up9");
                                } else if (movieTitle == "Real Steel") {
                                  Navigator.pushNamed(context, "up10");
                                }
                              },
                              child: ListTile(
                                contentPadding: EdgeInsets.all(8.0),
                                title: Row(
                                  crossAxisAlignment: CrossAxisAlignment
                                      .center, // ให้ข้อความอยู่กลาง
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 50,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        child: Image.asset(
                                          display_list[index].assetImagePath,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width:
                                            15.0), // ระยะห่างระหว่างรูปและข้อความ
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            display_list[index].movieTitle!,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0,
                                            ),
                                          ),
                                          SizedBox(
                                              height:
                                                  8.0), // ระยะห่างระหว่างข้อความ
                                          // เพิ่มข้อมูลอื่น ๆ ที่คุณต้องการแสดงได้ที่นี่
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ));
                        }))
          ],
        ),
      ),
    );
  }
}
