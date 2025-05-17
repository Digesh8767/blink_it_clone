import 'package:blink_it/repository/widgets/custom_appbar.dart';
import 'package:blink_it/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
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
