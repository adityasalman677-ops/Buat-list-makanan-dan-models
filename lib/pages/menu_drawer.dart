import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu/history_page.dart';
import 'package:flutter_application_1/menu/home_page.dart';
import 'package:flutter_application_1/menu/profile_page.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    const HistoryPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Aplikasi Menu Navigasi")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu Pilihan',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => _onItemTapped(0),
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('History'),
              onTap: () => _onItemTapped(1),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () => _onItemTapped(2),
            ),
          ],
        ),
      ),
      body: IndexedStack(index: _selectedIndex, children: _pages),
    );
  }
}
