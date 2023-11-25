import 'package:flutter/material.dart';
import '../widgets/CustomerNavBar.dart';

class AllUpComing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movies',
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0, // กำหนดค่า elevation เป็น 0 เพื่อลบกรอบบน AppBar
      ),
      bottomNavigationBar: CustomNavbar(),
      body: GridView.count(
        padding: const EdgeInsets.all(5.0),
        // ลดระยะห่างระหว่างรูปในแนวนอน
        mainAxisSpacing: 15, // ลดระยะห่างระหว่างรูปในแนวตั้ง
        crossAxisCount: 3,
        children: <Widget>[
          for (int i = 1; i < 11; i++)
            InkWell(
                onTap: () {
                  {
                    Navigator.pushNamed(context, "up$i");
                  }
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'images/up/up$i.jpg',
                    height: 300,
                    width: 200,
                    // fit: BoxFit.cover,
                  ),
                ))
        ],
      ),
    );
  }
}
