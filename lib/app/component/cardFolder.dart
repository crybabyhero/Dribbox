import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardFolder extends StatelessWidget {
  const CardFolder({
    super.key,
    required this.title,
    required this.date,
    required this.color,
    required this.image,
    required this.bgColor,
  });

  final String title;
  final String date;
  final Color color;
  final Color bgColor;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: Get.width * 0.44,
      height: 120,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              image,
              Icon(Icons.more_vert,
              color: color,
              )
            ],
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: color
            ),
          ),
          Text(
            date,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: color
            ),
          ),
        ],
      ),
    );
  }
}
