import 'package:agri_ai/view/home/home_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final int initialIndex;
  const BottomNavBar({super.key, required this.initialIndex});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static  final List<Widget> _pages = <Widget>[
    HomeScreen(),
    const Icon(
      Icons.search,
      size: 100,
    ),
    const Icon(
      Icons.store,
      size: 100,
    ),
    const Icon(
      Icons.history,
      size: 100,
    ),
    const Icon(
      Icons.person,
      size: 100,
    )
  ];

  @override
  void initState(){
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "Store"),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), label: "Order history"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        elevation: 10,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
