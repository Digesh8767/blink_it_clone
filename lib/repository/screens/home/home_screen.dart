import 'package:blink_it/repository/widgets/custom_appbar.dart';
import 'package:blink_it/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var data = [
    {
      "img": "image 50.png",
      "text": "Lights, Diyas\n & Candles",
    },
    {
      "img": "image 51.png",
      "text": " Diwali\nGifts",
    },
    {
      "img": "image 52.png",
      "text": "Appliances \n& Gadgets",
    },
    {
      "img": "image 53.png",
      "text": "Home \n& Living",
    }
  ];
  var groceryKitchen = [
    {
      "img": "image 41.png",
      "text": "Vegetables & \nFruits",
    },
    {
      "img": "image 42.png",
      "text": "Atta, Dal & \nRice",
    },
    {
      "img": "image 43.png",
      "text": "Oil, Ghee & \nMasala",
    },
    {
      "img": "image 44.png",
      "text": "Dairy,Bread & \nMilk",
    },
    {
      "img": "image 45.png",
      "text": "Biscuits & \nBakery",
    }
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            Divider(
              thickness: 1,
            ),
            Container(
              height: height * 0.25,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.yellow.shade600,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      UiHelper.customImage(img: "cracker 1.png"),
                      UiHelper.customImage(img: "cracker 2.png"),
                      UiHelper.customText(
                        text: "Mega Diwali Sale",
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: "bold",
                      ),
                      UiHelper.customImage(img: "cracker 3.png"),
                      UiHelper.customImage(img: "cracker 4.png"),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 108,
                              width: 86,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  UiHelper.customText(
                                    text: data[index]["text"].toString(),
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    fontFamily: "bold",
                                  ),
                                  UiHelper.customImage(
                                      img: data[index]["img"].toString(),
                                      height: 60),
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: data.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
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
                        UiHelper.customImage(img: "image 54.png"),
                        Padding(
                          padding: EdgeInsets.only(top: 95, left: 65),
                          child: UiHelper.customButton(() {}),
                        ),
                      ],
                    ),
                    UiHelper.customText(
                      text: "Golden Glass \nWooden Lid Candle (Oudh)",
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
                          text: "79",
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
                        UiHelper.customImage(img: "image 57.png"),
                        Padding(
                          padding: EdgeInsets.only(top: 95, left: 65),
                          child: UiHelper.customButton(() {}),
                        ),
                      ],
                    ),
                    UiHelper.customText(
                      text: "Royal Gulab Jamun \nBy Bikano",
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
                          text: "79",
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
                        UiHelper.customImage(img: "image 63.png"),
                        Padding(
                          padding: EdgeInsets.only(top: 95, left: 65),
                          child: UiHelper.customButton(() {}),
                        ),
                      ],
                    ),
                    UiHelper.customText(
                      text: "Bikaji Bhujia",
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
                          text: "79",
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
            ),
            _buildCategoryRow(
                "Grocery & Kitchen", groceryKitchen, width, height),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryRow(
      String title, List data, double width, double height) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: UiHelper.customText(
            text: title,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: width * 0.04,
          ),
        ),
        SizedBox(height: height * 0.01),
        SizedBox(
          height: height * 0.15,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: data.length,
            padding: EdgeInsets.symmetric(horizontal: width * 0.03),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.015),
                child: Column(
                  children: [
                    Container(
                      height: height * 0.1,
                      width: width * 0.18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFD9EBEB),
                      ),
                      child: UiHelper.customImage(
                        img: data[index]["img"].toString(),
                      ),
                    ),
                    SizedBox(height: height * 0.008),
                    UiHelper.customText(
                      text: data[index]["text"].toString(),
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: width * 0.025,
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
