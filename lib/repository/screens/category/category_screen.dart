import 'package:blink_it/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  TextEditingController searchController = TextEditingController();
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

  var secondGrocery = [
    {
      "img": "image 21.png",
      "text": "Dry Fruits & \nCereals",
    },
    {
      "img": "image 22.png",
      "text": "Kitchen & \nAppliances",
    },
    {
      "img": "image 23.png",
      "text": "Tea & \nCoffees",
    },
    {
      "img": "image 24.png",
      "text": "Ice Creams & \nmuch more",
    },
    {
      "img": "image 25.png",
      "text": "Noodles & \nPacket Food",
    }
  ];

  var snacksDrinks = [
    {
      "img": "image 31.png",
      "text": "Chips & \nNamkeens",
    },
    {
      "img": "image 32.png",
      "text": "Sweets & \nChocalates",
    },
    {
      "img": "image 33.png",
      "text": "Drinks & \nJuices",
    },
    {
      "img": "image 34.png",
      "text": "Sauces & \nSpreads",
    },
    {
      "img": "image 35.png",
      "text": "Beauty & \nCosmetics",
    }
  ];

  var houseHolds = [
    {
      "img": "image 36.png",
    },
    {
      "img": "image 37.png",
    },
    {
      "img": "image 38.png",
    },
    {
      "img": "image 39.png",
    },
    {
      "img": "image 40.png",
    }
  ];

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
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                UiHelper.customText(
                  text: "Grocery & Kitchen",
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "bold",
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: groceryKitchen.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 78,
                            width: 71,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFD9EBEB)),
                            child: UiHelper.customImage(
                                img: groceryKitchen[index]["img"].toString()),
                          ),
                        ),
                        UiHelper.customText(
                          text: groceryKitchen[index]["text"].toString(),
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 78,
                            width: 71,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFD9EBEB),
                            ),
                            child: UiHelper.customImage(
                              img: secondGrocery[index]["img"].toString(),
                            ),
                          ),
                        ),
                        UiHelper.customText(
                          text: secondGrocery[index]["text"].toString(),
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        ),
                      ],
                    );
                  },
                  itemCount: secondGrocery.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                UiHelper.customText(
                  text: "Snacks & Drinks",
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "bold",
                ),
              ],
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 78,
                            width: 71,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFD9EBEB),
                            ),
                            child: UiHelper.customImage(
                              img: snacksDrinks[index]["img"].toString(),
                            ),
                          ),
                        ),
                        UiHelper.customText(
                          text: snacksDrinks[index]["text"].toString(),
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        ),
                      ],
                    );
                  },
                  itemCount: snacksDrinks.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                UiHelper.customText(
                  text: "Household Essentials",
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "bold",
                )
              ],
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 78,
                        width: 71,
                        decoration: BoxDecoration(
                          color: Color(0xFFD9EBEB),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: UiHelper.customImage(
                          img: houseHolds[index]["img"].toString(),
                        ),
                      ),
                    );
                  },
                  itemCount: houseHolds.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
