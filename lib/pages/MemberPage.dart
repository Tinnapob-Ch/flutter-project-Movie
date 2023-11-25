import 'package:flutter/material.dart';
import 'package:movie_app/widgets/CustomerNavBar.dart';

class MembersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        // to go toback the page
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "MEMBERS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0), // ปรับขนาดตามความต้องการ
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "TINNAPOB",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "images/mem/mem1.jpg",
                              height: 200,
                              width: 150,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                 
                                  Text(
                                    "CONTACT",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "STUDENT ID \n      : 6421605346",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "NAME \n      : Tinnapob Changkwien",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.email,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      Text(
                                        " EMAIL \n : tinnapob.c@ku.th",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 2),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.facebook,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      Text(
                                        " FACEBOOK \n : Tinnapob Changkwien",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 2),
                                  Row(
                                    children: [
                                      Icon( Icons.phone,color: Colors.white,size: 20,),
                                      Text(" CALL\n :  082-1342913",
                                        style: TextStyle(color: Colors.white,fontSize: 16,),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      child: Text(
                        "PREEYA",
                        style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.w500,),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "images/mem/mem2.jpg",
                              height: 200,
                              width: 150,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "CONTACT",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "STUDENT ID \n     : 6421605401",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "NAME \n     : Preeya Suwanchai",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.email,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      Text(
                                        " EMAIL\n :  Preeya.su@ku.th",
                                        style: TextStyle( color: Colors.white,fontSize: 16,),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 2),
                                  Row(
                                    children: [
                                      Icon(Icons.facebook,color: Colors.white,size: 20,),
                                      Text(
                                        " FACEBOOK \n :  Preeya Suwanchai",
                                        style: TextStyle(color: Colors.white,fontSize: 16,),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 2),
                                  Row(
                                    children: [
                                      Icon(Icons.phone,color: Colors.white,size: 20, ),
                                      Text(" CALL \n :  083-0252921",style: TextStyle(
                                          color: Colors.white,fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavbar(),
    );
  }
}
