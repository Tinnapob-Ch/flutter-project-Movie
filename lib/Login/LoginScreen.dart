import 'package:flutter/material.dart';
import 'package:movie_app/Login/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:movie_app/model/profile.dart';
import 'package:movie_app/pages/HomePage.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile(email: '', password: '');
  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: firebase,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Error'),
            ),
            body: Center(child: Text('${snapshot.error}')),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            // backgroundColor: Colors.black,
            resizeToAvoidBottomInset: false,
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "images/bg3.jpg"), // เปลี่ยนเป็นตำแหน่งรูปภาพของคุณ
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius:
                            BorderRadius.circular(10), // กำหนดค่าความโค้งของขอบ
                        child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(
                                  207, 49, 44, 44), // กำหนดสีพื้นหลังเป็นสีดำ
                            ),
                            width: double.infinity, // กำหนดขนาดความกว้าง
                            height: 380, // กำหนดขนาดความสูง
                            padding: EdgeInsets.all(15), // กำหนดระยะขอบทุกด้าน

                            child: Column(
                              children: [
                                const Center(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                  width: 15,
                                ),
                                          Text(
                                            "APOSTROPHE",
                                            style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                             ),
                                          ),
                                           Text(
                                            " s",
                                            style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Form(
                                  key: formKey,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'EMAIL',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors
                                                  .white), // เพิ่มสีขาวที่นี่
                                        ),
                                        TextFormField(
                                          validator: MultiValidator([
                                            RequiredValidator(
                                                errorText: "Please enter your email"),
                                            EmailValidator(
                                                errorText:
                                                    "Enter your email address and nothing else")
                                          ]),
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          onSaved: (String? email) {
                                            profile.email = email!;
                                          },
                                          decoration: const InputDecoration(
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors
                                                    .white, // สีขอบเมื่อโฟกัส
                                              ),
                                            ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors
                                                    .white, // สีขอบเมื่อไม่ได้โฟกัส
                                              ),
                                            ),
                                          ),
                                          style: TextStyle(
                                            color: Colors
                                                .white, // เปลี่ยนสีข้อความใน TextFormField เป็นสีขาว
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          'PASSWORD',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors
                                                  .white), // เพิ่มสีขาวที่นี่
                                        ),
                                        TextFormField(
                                          validator: RequiredValidator(
                                              errorText: "Please enter your password"),
                                          obscureText: true,
                                          onSaved: (String? password) {
                                            profile.password = password!;
                                          },
                                          
                                          decoration: InputDecoration(
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors
                                                    .white, // สีขอบเมื่อโฟกัส
                                              ),
                                            ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors
                                                    .white, // สีขอบเมื่อไม่ได้โฟกัส
                                              ),
                                            ),
                                          ),
                                          style: TextStyle(
                                            color: Colors
                                                .white, // เปลี่ยนสีข้อความใน TextFormField เป็นสีขาว
                                          ),
                                          
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          child: ElevatedButton(
                                            child: Text("LOGIN",
                                                style: TextStyle(fontSize: 20)),
                                            onPressed: () async {
                                              if (formKey.currentState
                                                      ?.validate() ??
                                                  false) {
                                                formKey.currentState!.save();
                                                try {
                                                  await FirebaseAuth.instance
                                                      .signInWithEmailAndPassword(
                                                          email: profile.email,
                                                          password:
                                                              profile.password)
                                                      .then((value) {
                                                    formKey.currentState
                                                        ?.reset();
                                                    Navigator.pushReplacement(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) {
                                                      return HomePage();
                                                    }));
                                                  });
                                                } on FirebaseAuthException catch (e) {
                                                  Fluttertoast.showToast(
                                                      msg: e.message!,
                                                      gravity:
                                                          ToastGravity.TOP);
                                                }
                                              }
                                            },
                                            style: ElevatedButton.styleFrom(
                                              primary: const Color.fromARGB(255,49,104,51), // เปลี่ยนสีเป็นสีเขียวที่นี่
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          child: ElevatedButton.icon(
                                            icon: Icon(Icons.add),
                                            label: Text("REGISTER",
                                                style: TextStyle(fontSize: 20)),
                                            onPressed: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return RegisterScreen();
                                              }));
                                            },
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      const Color.fromARGB(255,141,38,31)), // กำหนดสีแดง
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      )
                    ],
                  )),
            ),
          );
        }

        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
