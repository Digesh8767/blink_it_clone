import 'package:blink_it/repository/screens/bottomNav/bottom_nav_screen.dart';
import 'package:blink_it/repository/screens/home/home_screen.dart';
import 'package:blink_it/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            UiHelper.customImage(
              img: "login products.png",
            ),
            SizedBox(
              height: 20,
            ),
            UiHelper.customImage(
              img: "blinkIt logo.png",
            ),
            SizedBox(
              height: 20,
            ),
            UiHelper.customText(
              text: "India's last minute app",
              color: Color(0xFF000000),
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: "bold",
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    UiHelper.customText(
                      text: "Sujal",
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
                      height: 48,
                      width: 295,
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
                      height: 15,
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
            )
          ],
        ),
      ),
    );
  }
}
