import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      body: Stack(
        children: [
          Container(
            width: Get.width,
            child: Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 135,
                ),
                Container(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'assets/images/ilust.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Welcome to",
                  style: TextStyle(
                      color: Color(0xFF22215B),
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "Dirbbox",
                  style: TextStyle(
                      color: Color(0xFF22215B),
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Container(
                  width: 240,
                  child: Text(
                    "Best cloud storage platform for all business and individuals to manage there data.",
                    style: TextStyle(
                        color: Color(0xFF7B7F9E),
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Join For Free.",
                  style: TextStyle(
                      color: Color(0xFF7B7F9E),
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/icons/smart.png',
                                width: 15, height: 15),
                            SizedBox(width: 10),
                            Text(
                              "Smart Id",
                              style: TextStyle(
                                  color: Color(0xFF567DF4), fontSize: 14),
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF567DF4).withOpacity(0.1),
                            fixedSize: Size(150, 50),
                            padding: EdgeInsets.symmetric(
                                horizontal: 35, vertical: 12),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          Get.toNamed('/home');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sign In",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            SizedBox(width: 10),
                            Icon(Icons.arrow_right_alt,
                                color: Colors.white, size: 20),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF567DF4),
                            fixedSize: Size(150, 50),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ]),
                SizedBox(height: 20),
                Center(
                    child: Text(
                  "Use Social Login",
                  style: TextStyle(color: Color(0xFF7B7F9E), fontSize: 14),
                )),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/icons/ig.png'),
                    SizedBox(width: 60),
                    Image.asset('assets/images/icons/twit.png'),
                    SizedBox(width: 60),
                    Image.asset('assets/images/icons/fb.png'),
                  ],
                ),
                SizedBox(height: 30),
                Center(
                    child: Text("Create Account",
                        style:
                            TextStyle(color: Color(0xFF7B7F9E), fontSize: 16))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
