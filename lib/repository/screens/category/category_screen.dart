import 'package:blink_it/repository/widgets/custom_appbar.dart';
import 'package:blink_it/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
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
      "text": "Cleaners & \n Repellents",
    },
    {
      "img": "image 37.png",
      "text": "Home & \nLifestyle",
    },
    {
      "img": "image 38.png",
      "text": "Health & \nPharma",
    },
    {
      "img": "image 39.png",
      "text": "Furniture",
    },
    {
      "img": "image 40.png",
      "text": "oil",
    }
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SizedBox(height: height * 0.025),
            _buildCategoryRow(
                "Grocery & Kitchen", groceryKitchen, width, height),
            _buildCategoryRow("More Grocery", secondGrocery, width, height),
            _buildCategoryRow("Snacks & Drinks", snacksDrinks, width, height),
            _buildCategoryRow(
                "Household Essentials", houseHolds, width, height),
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
