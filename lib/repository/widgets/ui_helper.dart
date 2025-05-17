import 'package:flutter/material.dart';

class UiHelper {
  static customImage({
    required String img,
    double? height,
    double? width,
  }) {
    return Image.asset(
      "assets/images/$img",
      height: height,
      width: width,
    );
  }

  static customText({
    required String text,
    required Color color,
    required FontWeight fontWeight,
    String? fontFamily,
    required double fontSize,
  }) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          fontFamily: fontFamily ?? "regular",
          fontWeight: fontWeight,
          color: color),
    );
  }

  static customTextField({required TextEditingController controller}) {
    return Container(
      height: 40,
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Color(0XFFC5C5C5),
        ),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search 'mango'",
          prefixIcon: Image.asset("assets/images/search.png"),
          suffixIcon: Image.asset("assets/images/mic.png"),
          border: InputBorder.none,
        ),
      ),
    );
  }

  static customButton(VoidCallback callBack) {
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
        border: Border.all(
          color: Color(0xFF27AF34),
        ),
      ),
      child: Center(
        child: Text(
          "Add",
          style: TextStyle(
            fontSize: 8,
            color: Color(0xFF27AF34),
          ),
        ),
      ),
    );
  }
}
