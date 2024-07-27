import 'package:dirbbox/app/component/cardFolder.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F1F1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF22215B)),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text('My Profile',
            style: TextStyle(color: Color(0xFF22215B))),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz, color: Color(0xFF22215B)),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: 75,
                      height: 75,
                      child: Image.asset(
                        'assets/images/profile.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Neelesh Chaudhary",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF22215B)),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "UI / UX Designer",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF22215B),
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF22215B),
                          fontWeight: FontWeight.w300),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF317B),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "PRO",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Folders',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF22215B)),
                ),
                Row(children: [
                  Icon(
                    Icons.add,
                    color: Color(0xFF1D1C29),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.display_settings_outlined,
                    color: Color(0xFF1D1C29),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.navigate_next_rounded,
                    color: Color(0xFF1D1C29),
                  ),
                ])
              ],
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  title: 'Mobile Apps',
                  date: 'December 22 2021 ',
                  bgColor: Color.fromARGB(255, 201, 231, 255),
                  color: Color(0xFF567DF4),
                  image: Image.asset(
                    'assets/images/icons/folderBiru.png',
                  ),
                ),
                CardFolder(
                  title: 'SVG Icons',
                  date: 'December 14 2020 ',
                  bgColor: Color.fromARGB(255, 252, 243, 208),
                  color: Color(0xFFFFB110),
                  image: Image.asset(
                    'assets/images/icons/folderKuning.png',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  title: 'Mobile Apps',
                  date: 'December 22 2021 ',
                  bgColor: Color.fromARGB(255, 255, 223, 223),
                  color: Color(0xFFAC4141),
                  image: Image.asset(
                    'assets/images/icons/folderMerah.png',
                  ),
                ),
                CardFolder(
                  title: 'Prototypes',
                  date: 'November 22 2020 ',
                  bgColor: Color.fromARGB(255, 189, 255, 255),
                  color: Color(0xFF23B0B0),
                  image: Image.asset(
                    'assets/images/icons/folderHijau.png',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Projects',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF22215B)),
                ),
                Image.asset(
                  'assets/images/icons/Sort.png',
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          ListTile(
            leading: 
            Container(
              width: 50,
              height: 50,
              child: Image.asset(
                'assets/images/icons/word.png',
                fit: BoxFit.contain,
              ),
            ),
            title: Text("Project.docx", style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("November 22, 2022", style: TextStyle(fontWeight: FontWeight.w300),),
            trailing: Text("300kb", style: TextStyle(fontWeight: FontWeight.w300),),
          )
        ],
      ),
    );
  }
}
