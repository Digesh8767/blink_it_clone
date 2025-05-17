import 'package:blink_it/repository/screens/bottomNav/bottom_nav_screen.dart';

import 'package:blink_it/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    // final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              UiHelper.customImage(
                img: "login products.png",
                height: height * 0.45,
                width: double.infinity,
              ),
              SizedBox(
                height: height * 0.002,
              ),
              UiHelper.customImage(
                img: "blinkIt logo.png",
                height: height * 0.15,
              ),
              SizedBox(
                height: height * 0.001,
              ),
              UiHelper.customText(
                text: "India's last minute app",
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: "bold",
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Expanded(
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: height * 0.2,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.01,
                        ),
                        UiHelper.customText(
                          text: "Digesh",
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        UiHelper.customText(
                          text: "78277XXXXX",
                          color: Color(0xFF9C9C9C),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: "bold",
                        ),
                        SizedBox(
                          height: height * 0.06,
                          width: 300,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BottomNavScreen(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFE23744),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                UiHelper.customText(
                                  text: "Login With",
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: "bold",
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                UiHelper.customImage(img: "zomato.png")
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        UiHelper.customText(
                          text:
                              "Access your saved addresses from Zomato automatically",
                          color: Color(0xFF9C9C9C),
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        UiHelper.customText(
                          text: "or login with phone number",
                          color: Color(0xFF269237),
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
