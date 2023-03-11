import 'package:flutter/material.dart';
import 'package:ilsottosopra3c/home.dart';
import 'package:ilsottosopra3c/search.dart';
import 'package:ilsottosopra3c/setting.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen> {

List <Widget> pages = [
  HomeScreen(),
  SearchScreen(),
  SettingScreen(),
];



 void chooseIndex(int index) {
  setState(() {
    selectedIndex = index;
  });
  }
 
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(selectedIndex),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,

        onTap: chooseIndex,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
         const  BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        const BottomNavigationBarItem(
            icon: Icon(Icons.settings), label: "settings"),
        const BottomNavigationBarItem(
            icon: Icon(Icons.favorite), label: "like"),
      ]),
      // ignore: prefer_const_constructors
      drawer: Drawer(),
      appBar: AppBar(
        // ignore: prefer_const_constructors
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(
            child: Image.asset(
          'lib/assets/logo.png',
          width: 200,
        )),
        backgroundColor: Colors.white,
        actions: [SizedBox(width: 50)],
      ),
    );
  }
}
