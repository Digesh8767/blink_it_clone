import 'package:blink_it/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 190,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.yellow,
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
    );
  }
}
