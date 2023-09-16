import 'package:assignment/CategoriesScreen.dart';
import 'package:assignment/FavouriteScreen.dart';
import 'package:assignment/HomeScreen.dart';
import 'package:assignment/MoreScreen.dart';
import 'package:assignment/ShoppingScreen.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List PagesData = [const HomeScreen(),const CategoryScreen(),ShoppingScreen(),const MoreScreen()];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PagesData[selectedItem],

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedItem = index;
          });
        },
      currentIndex: selectedItem,
      
      selectedItemColor:  const Color.fromARGB(255, 36, 30, 130),
      unselectedItemColor: Colors.grey,
      items: const 
      [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',),
        BottomNavigationBarItem(icon: (Icon(Icons.category)),label: 'Categories'),
        BottomNavigationBarItem(icon: (Icon(Icons.shop)),label: 'Shopping'),
        BottomNavigationBarItem(icon: (Icon(Icons.more_vert)),label: 'More'),
      ]),
    );
  }
}