import 'package:dirbbox/app/component/cardFolder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 40.0), // Padding untuk memberi ruang di bawah header
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    // Header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Your Dribbox",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF22215B),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/sidebar');
                          },
                          child:
                              Image.asset("assets/images/icons/union.png"),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
          
                    // Search Field
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Search Folder",
                        hintStyle: TextStyle(color: Color(0xFF22215B)),
                        prefixIcon:
                            Icon(Icons.search, color: Color(0xFF22215B)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Color(0xFF22215B)),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
          
                    // Recent and Layout Icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Recent',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF22215B),
                              ),
                            ),
                            SizedBox(width: 10),
                            Image.asset('assets/images/icons/down.png'),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.menu, color: Color(0xFFB0C0D0)),
                            SizedBox(width: 10),
                            Image.asset('assets/images/icons/box.png'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
          
                    // Folder Cards
                    Padding(
                      padding: EdgeInsets.zero,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardFolder(
                            title: 'Mobile Apps',
                            date: 'December 22 2021',
                            bgColor: Color(0xFFFFDFDF),
                            color: Color(0xFFAC4141),
                            image: Image.asset(
                                'assets/images/icons/folderMerah.png'),
                          ),
                          CardFolder(
                            title: 'Prototypes',
                            date: 'November 22 2020',
                            bgColor: Color(0xFFBDFFFF),
                            color: Color(0xFF23B0B0),
                            image: Image.asset(
                                'assets/images/icons/folderHijau.png'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.zero,
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
                      padding: EdgeInsets.zero,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardFolder(
                            title: 'Mobile Apps',
                            date: 'December 22 2021',
                            bgColor: Color(0xFFFFDFDF),
                            color: Color(0xFFAC4141),
                            image: Image.asset(
                                'assets/images/icons/folderMerah.png'),
                          ),
                          CardFolder(
                            title: 'Prototypes',
                            date: 'November 22 2020',
                            bgColor: Color(0xFFBDFFFF),
                            color: Color(0xFF23B0B0),
                            image: Image.asset(
                                'assets/images/icons/folderHijau.png'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.zero,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardFolder(
                            title: 'Mobile Apps',
                            date: 'December 22 2021',
                            bgColor: Color(0xFFFFDFDF),
                            color: Color(0xFFAC4141),
                            image: Image.asset(
                                'assets/images/icons/folderMerah.png'),
                          ),
                          CardFolder(
                            title: 'Prototypes',
                            date: 'November 22 2020',
                            bgColor: Color(0xFFBDFFFF),
                            color: Color(0xFF23B0B0),
                            image: Image.asset(
                                'assets/images/icons/folderHijau.png'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.zero,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardFolder(
                            title: 'Mobile Apps',
                            date: 'December 22 2021',
                            bgColor: Color(0xFFFFDFDF),
                            color: Color(0xFFAC4141),
                            image: Image.asset(
                                'assets/images/icons/folderMerah.png'),
                          ),
                          CardFolder(
                            title: 'Prototypes',
                            date: 'November 22 2020',
                            bgColor: Color(0xFFBDFFFF),
                            color: Color(0xFF23B0B0),
                            image: Image.asset(
                                'assets/images/icons/folderHijau.png'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.zero,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardFolder(
                            title: 'Mobile Apps',
                            date: 'December 22 2021',
                            bgColor: Color(0xFFFFDFDF),
                            color: Color(0xFFAC4141),
                            image: Image.asset(
                                'assets/images/icons/folderMerah.png'),
                          ),
                          CardFolder(
                            title: 'Prototypes',
                            date: 'November 22 2020',
                            bgColor: Color(0xFFBDFFFF),
                            color: Color(0xFF23B0B0),
                            image: Image.asset(
                                'assets/images/icons/folderHijau.png'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed('/profile');
          },
          child: Icon(Icons.add, color: Colors.white),
          backgroundColor: Color(0xFF22215B),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          elevation: 0,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
