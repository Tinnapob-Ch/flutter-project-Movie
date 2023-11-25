import 'package:flutter/material.dart';
import 'package:movie_app/Login/LoginScreen.dart';
import 'package:movie_app/pages/HomePage.dart';


class TextPage extends StatefulWidget {
  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  String _displayText = '';
  int _currentCharacterIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _displayText,
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, decoration: TextDecoration.none),
      ),
      
    );
  }

  @override
  void initState() {
    super.initState();

    // เริ่มต้นการพิมพ์ข้อความทีละตัวอักษร
    _startTypingAnimation();
  }

  void _startTypingAnimation() {
    const textToType = 'APOSTROPHE S';

    Future.delayed(Duration(milliseconds: 150), () {
      setState(() {
        if (_currentCharacterIndex <= textToType.length) {
          _displayText = textToType.substring(0, _currentCharacterIndex);
          _currentCharacterIndex++;
          _startTypingAnimation();
        } else {
          _displayText = textToType; // เมื่อพิมพ์เสร็จสิ้น
          
          // ค้างเวลา 2 วินาทีก่อนที่จะนำทางไปยังหน้าหลัก
          Future.delayed(Duration(milliseconds: 150), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          });
        }
      });
    });
  }
}
