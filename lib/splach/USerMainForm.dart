// ignore_for_file: file_names, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class MainForm extends StatefulWidget {
  const MainForm({super.key});
  @override
  State<MainForm> createState() => _MainFormState();
}

// ignore: prefer_const_constructors
int index = 0;
final Pages = [
//  محدش يقربلها بعد اذنكم عشان هكمل هنا
];

class _MainFormState extends State<MainForm> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // عنوان الصفحة
        centerTitle: true,
        backgroundColor: Colors.cyan,
        toolbarHeight: 80,
        title: const Text(' الصفحة الرئيسية '),

        actions: [
          // زر البحث
          IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {}), //  عند الضغط ع زر البحث
          const Padding(padding: EdgeInsets.only(right: 10)),
          //زر الخروج
          IconButton(
              icon: const Icon(Icons.exit_to_app),
              padding: const EdgeInsets.only(right: 20),
              onPressed: () {
// زر لتسجيل الخروج
                showBottomSheet(
                    context: context,
                    builder: (context) {
                      // ignore: sized_box_for_whitespace
                      return Container(
                          height: 400,
                          child: Center(
                              // child: ElevatedButton(
                              //   child: Text('خروج '),

                              // ),
                              ));
                    });
              }),
        ],
        flexibleSpace: Container(
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
                // ignore: prefer_const_constructors
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                    // ignore: prefer_const_literals_to_create_immutables
                    colors: [
              Colors.cyan,
              Colors.cyan,
              //  Color.fromARGB(255, 24, 163, 255)
            ]))),
      ),

////  ده ال Nagivation Bar  الزراير اللي تحت

      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          // ignore: prefer_const_literals_to_create_immutables
          height: 50,
          backgroundColor: Colors.cyan,
          // ignore: prefer_const_literals_to_create_immutables, duplicate_ignore
          destinations: [
            // ignore: prefer_const_constructors

            // ignore: prefer_const_constructors
            NavigationDestination(
                icon: const Icon(
                  Icons.category,
                  color: Colors.white,
                ),
                selectedIcon: const Icon(
                  Icons.category_outlined,
                  color: Colors.white,
                ),
                label: "  الأقسام "),

            NavigationDestination(
                icon: const Icon(
                  Icons.home_filled,
                  color: Colors.white,
                ),
                selectedIcon: const Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ),
                label: " الصفحة الرئيسية"),

            NavigationDestination(
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                selectedIcon: const Icon(
                  Icons.person_outlined,
                  color: Colors.white,
                ),
                label: "  الملف الشخصي  "),
          ]),

      // Menu button ايقونه ال
      drawer: Drawer(
        backgroundColor: Colors.cyan,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: DrawerHeader(
                  padding: EdgeInsets.only(top: 50, right: 15),
                  child: Text(
                    '        الخدمات   \n (  اسم المؤسسه ) ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              ///////////////// الحالات "
              ///////////////////////////////////
              ListTile(
                title: const Text(
                  "   الحالات ",
                  style: TextStyle(color: Colors.white),
                ),
                // ignore: prefer_const_constructors
                leading: Icon(
                  Icons.personal_video,
                  color: Colors.black45,
                ),
                //,  عند الضغط هيعمل كذه
                onTap: () {},
              ),

              ///////////////// التبرعات"
              ///////////////////////////////////
              ListTile(
                title: const Text(
                  "  التبرعات ",
                  style: TextStyle(color: Colors.white),
                ),
                // ignore: prefer_const_constructors
                leading: Icon(
                  Icons.volunteer_activism,
                  color: Colors.black45,
                ),
                //,  عند الضغط هيعمل كذه
                onTap: () {},
              ),
              ///////////////// الزيارات "
              ///////////////////////////////////
              ListTile(
                title: const Text(
                  "  الزيارات ",
                  style: TextStyle(color: Colors.white),
                ),
                // ignore: prefer_const_constructors
                leading: Icon(
                  Icons.person_pin_circle_rounded,
                  color: Colors.black45,
                ),
                //,  عند الضغط هيعمل كذه
                onTap: () {},
              ),
              ///////////////// الخدمات اليومية"
              ///////////////////////////////////
              ListTile(
                title: const Text(
                  " الخدمات اليومية",
                  style: TextStyle(color: Colors.white),
                ),
                // ignore: prefer_const_constructors
                leading: Icon(
                  Icons.design_services,
                  color: Colors.black45,
                ),
                //,  عند الضغط هيعمل كذه
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.amber,
        label: Text(
          'إضافة حاله ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        icon: Icon(Icons.person_add_alt),
        onPressed:
            () {}, //  عند الضغط ع الزر هينقلني لصفحة جديده عشان اسجل الحاله
        hoverColor: Colors.grey[200],
        extendedTextStyle: TextStyle(color: Colors.black),
      ),

///// المعلومات الاساسية في الصفحة
      body: Column(
        children: [],
      ),
    );
  }
}
