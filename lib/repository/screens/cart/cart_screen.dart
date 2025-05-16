import 'package:blink_it/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 190,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.yellow, // Blinkit yellow
                        Colors.white,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          UiHelper.customText(
                            text: "Blinkit in",
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            fontFamily: "bold",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          UiHelper.customText(
                            text: "16 minutes",
                            color: Color(0XFF000000),
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            fontFamily: "bold",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          UiHelper.customText(
                            text: "HOME",
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                          UiHelper.customText(
                            text: "- Digesh Kapadiya, Plasava, Junagadh",
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 100,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  child: UiHelper.customTextField(controller: searchController),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            UiHelper.customImage(img: "cart.png"),
            SizedBox(
              height: 20,
            ),
            UiHelper.customText(
              text: "Reordering will be easy",
              color: Color(0xFF000000),
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: "bold",
            ),
            UiHelper.customText(
              text: "Items you order will show up here so you can buy ",
              color: Color(0xFF000000),
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
            UiHelper.customText(
              text: "them again easily.",
              color: Color(0xFF000000),
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                UiHelper.customText(
                  text: "Bestsellers",
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: "bold",
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        UiHelper.customImage(img: "image 48.png"),
                        Padding(
                          padding: EdgeInsets.only(top: 95, left: 65),
                          child: UiHelper.customButton(() {}),
                        ),
                      ],
                    ),
                    UiHelper.customText(
                      text: "Amul Taaza Toned\nFresh Milk",
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.normal,
                      fontSize: 8,
                    ),
                    Row(
                      children: [
                        UiHelper.customImage(img: "timer.png"),
                        UiHelper.customText(
                          text: "16 MINS",
                          color: Color(0xFF9C9C9C),
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        UiHelper.customImage(img: "rupess.png"),
                        UiHelper.customText(
                          text: "27",
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: "bold",
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        UiHelper.customImage(img: "image 47.png"),
                        Padding(
                          padding: EdgeInsets.only(top: 95, left: 65),
                          child: UiHelper.customButton(() {}),
                        ),
                      ],
                    ),
                    UiHelper.customText(
                      text: "Potato (Aloo)",
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.normal,
                      fontSize: 8,
                    ),
                    Row(
                      children: [
                        UiHelper.customImage(img: "timer.png"),
                        UiHelper.customText(
                          text: "16 MINS",
                          color: Color(0xFF9C9C9C),
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        UiHelper.customImage(img: "rupess.png"),
                        UiHelper.customText(
                          text: "37",
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: "bold",
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        UiHelper.customImage(img: "image 46.png"),
                        Padding(
                          padding: EdgeInsets.only(top: 95, left: 65),
                          child: UiHelper.customButton(() {}),
                        ),
                      ],
                    ),
                    UiHelper.customText(
                      text: "Hybrid Tomato",
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.normal,
                      fontSize: 8,
                    ),
                    Row(
                      children: [
                        UiHelper.customImage(img: "timer.png"),
                        UiHelper.customText(
                          text: "16 MINS",
                          color: Color(0xFF9C9C9C),
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        UiHelper.customImage(img: "rupess.png"),
                        UiHelper.customText(
                          text: "37",
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: "bold",
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
