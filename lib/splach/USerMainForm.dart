// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MainForm extends StatefulWidget {
  const MainForm({super.key});

  @override
  State<MainForm> createState() => _MainFormState();
}
// ignore: prefer_const_constructors

class _MainFormState extends State<MainForm> {
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
                onPressed: () {}),
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
                      '   فاعل خير    ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(color: Colors.purple),

                ///////////////// الحالات "
                ///////////////////////////////////
                ListTile(
                  title: const Text(
                    " الحالات ",
                    style: TextStyle(color: Colors.white),
                  ),
                  // ignore: prefer_const_constructors
                  leading: Icon(
                    Icons.person_add_alt_sharp,
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
                    Icons.person_add_alt_sharp,
                    color: Colors.black45,
                  ),
                  //,  عند الضغط هيعمل كذه
                  onTap: () {},
                ),

                ///////////////// التبرعات"
                ///////////////////////////////////
                ListTile(
                  title: const Text(
                    "التبرعات ",
                    style: TextStyle(color: Colors.white),
                  ),
                  // ignore: prefer_const_constructors
                  leading: Icon(
                    Icons.person_add_alt_sharp,
                    color: Colors.black45,
                  ),
                  //,  عند الضغط هيعمل كذه
                  onTap: () {},
                ),
              ],
            ))));
  }
}
