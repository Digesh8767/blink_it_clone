import 'package:blink_it/repository/widgets/custom_appbar.dart';
import 'package:blink_it/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {
  const PrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Color(0xFFFBF0CE),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(
              height: 30,
            ),
            UiHelper.customText(
              text: "Print Store",
              color: Color(0xFF000000),
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
            UiHelper.customText(
              text: "Blinkit ensures secure prints at every stage",
              color: Color(0xFF9C9C9C),
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            SizedBox(
              height: 40,
            ),
            Stack(
              children: [
                Container(
                  height: height * 0.2,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          UiHelper.customText(
                            text: "Documents",
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          UiHelper.customImage(img: "star.png"),
                          SizedBox(
                            width: 4,
                          ),
                          UiHelper.customText(
                            text: "Price starting at rs 3/page",
                            color: Color(0xFF9C9C9C),
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          UiHelper.customImage(img: "star.png"),
                          SizedBox(
                            width: 4,
                          ),
                          UiHelper.customText(
                            text: "Paper quality: 70 GSM",
                            color: Color(0xFF9C9C9C),
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          UiHelper.customImage(img: "star.png"),
                          SizedBox(
                            width: 4,
                          ),
                          UiHelper.customText(
                            text: "Single side prints",
                            color: Color(0xFF9C9C9C),
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            height: height * 0.04,
                            width: width * 0.3,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: Text(
                                "Upload Files",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 15,
                  bottom: 30,
                  child: UiHelper.customImage(img: "print.png"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
