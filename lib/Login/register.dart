import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:movie_app/Login/LoginScreen.dart';

import '../model/profile.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
            appBar: AppBar(
              title: Text('REGISTER'),
              backgroundColor: Color.fromARGB(255,141,38,31), // กำหนดสีเทาให้กับ Appbar
            ),
            backgroundColor: Colors.black,
            body: Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'EMAIL',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white), // เพิ่มสีขาวที่นี่
                        ),
                        TextFormField(
                          validator: MultiValidator([
                            RequiredValidator(errorText: "Please enter your email"),
                            EmailValidator(
                                errorText: "Enter your email address and nothing else")
                          ]),
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (String? email) {
                            profile.email = email!;
                          },
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white), // สีขอบเมื่อโฟกัส
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white), // สีขอบเมื่อไม่ได้โฟกัส
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
                              color: Colors.white), // เพิ่มสีขาวที่นี่
                        ),
                        TextFormField(
                          validator:
                              RequiredValidator(errorText: "Please enter your password"),
                          obscureText: true,
                          onSaved: (String? password) {
                            profile.password = password!;
                          },
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white), // สีขอบเมื่อโฟกัส
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white), // สีขอบเมื่อไม่ได้โฟกัส
                            ),
                          ),
                          style: TextStyle(
                            color: Colors
                                .white, // เปลี่ยนสีข้อความใน TextFormField เป็นสีขาว
                          ),
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255,141,38,31), // เปลี่ยนสีพื้นหลังเป็นสีแดงที่นี่
                            ),
                            
                            child: Text(
                              "REGISTER",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors
                                    .white, // เปลี่ยนสีข้อความเป็นสีขาวที่นี่
                              ),
                            ),
                            onPressed: () async {
                              if (formKey.currentState?.validate() ?? false) {
                                formKey.currentState!.save();
                                try {
                                  await FirebaseAuth.instance
                                      .createUserWithEmailAndPassword(
                                    email: profile.email,
                                    password: profile.password,
                                  )
                                      .then((value) {
                                    formKey.currentState?.reset();
                                    Fluttertoast.showToast(
                                      msg: "User account created successfully",
                                      gravity: ToastGravity.TOP,
                                    );
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return LoginScreen();
                                    }));
                                  });
                                } on FirebaseAuthException catch (e) {
                                  String message = 'An error occurred';
                                  if (e.code == 'email-already-in-use') {
                                    message =
                                        'This email is already in the system';
                                  } else if (e.code == 'weak-password') {
                                    message =
                                        'Password must be 6 characters or more in length';
                                  } else {
                                    message = e.message!;
                                  }
                                  Fluttertoast.showToast(
                                    msg: message,
                                    gravity: ToastGravity.TOP,
                                  );
                                }
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
