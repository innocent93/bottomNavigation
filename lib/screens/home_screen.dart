import 'package:contact_list/widget/favorite_widget.dart';
import 'package:contact_list/widget/home_widget.dart';
import 'package:contact_list/widget/profile_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  _setIndex(int index) => setState(
        () => _selectedIndex = index,
      );
  final List<Widget> _selectedWidget = [
    const HomeWidget(),
    const FavWidget(),
    const ProfileWidget()
  ];
  // setState( {
  //   _selectedIndex = index
  // })

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Contacts"),
        centerTitle: false,
      ),
      body: _selectedWidget[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => _setIndex(value),
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_rounded), label: "favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded), label: "person"),
        ],
      ),
    );
  }
}
