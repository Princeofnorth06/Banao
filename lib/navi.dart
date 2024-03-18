import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 12,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.hub_rounded),
          label: 'Hub',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Learn',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(
                'images/man.png'), // Replace with your actual image asset path
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: 0, // Set the initial selected index
      onTap: (index) {
        // Handle navigation based on selected index
      },
    );
  }
}
