import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/sidebar_controller.dart';

class SidebarView extends GetView<SidebarController> {
  const SidebarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: Get.width * 0.6,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/Image.png',
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        "Neelesh Chaudhary",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF22215B),
                        ),
                      ),
                      subtitle: Text(
                        "Seattle, Washington",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF22215B),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.close_rounded),
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 20),

            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.zero,
                width: Get.width * 0.5,
                height: 615,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildMenuItem("Home", '/home'),
                      SizedBox(height: 20), // Add space between items
                      _buildMenuItem("Profile", '/profile'),
                      SizedBox(height: 20),
                      _buildMenuItem("Storage", '/storage'),
                      SizedBox(height: 20),
                      _buildMenuItem("Shared", '/shared'),
                      SizedBox(height: 20),
                      _buildMenuItem("Stats", '/stats'),
                      SizedBox(height: 20),
                      _buildMenuItem("Setting", '/setting'),
                      SizedBox(height: 20),
                      _buildMenuItem("Help", '/help'),
                      SizedBox(height: 250),
                      GestureDetector(
                        onTap: () {
                          controller.keluar();
                        },
                        child: Row(
                          children: [
                            Icon(Icons.logout, color: Color(0xFF22215B)),
                            SizedBox(width: 10),
                            Text(
                              "Logout",
                              style: TextStyle(color: Color(0xFF22215B)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Version 2.0.1",
                        style: TextStyle(fontSize: 12, color: Color(0xFF3A4276)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(String text, String route) {
    return Obx(() {
      bool isSelected = controller.selectedItem.value == route;

      return GestureDetector(
        onTap: () => controller.navigateTo(route),
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 300),
          style: TextStyle(
            color: Color(0xFF22215B),
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 18,
          ),
          child: Text(text),
        ),
      );
    });
  }
}
