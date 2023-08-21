import 'package:flutter/material.dart';
import 'package:profile_example/presentation/provider/navbar_provider.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var navbarP = Provider.of<NavbarProvider>(context);
    return BottomNavigationBar(
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: 'Wishlists',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_airport_outlined),
          label: 'Trips',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'Inbox',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: 'Profile',
        ),
      ],
      currentIndex: navbarP.selectedIndex,
      selectedItemColor: Colors.pink,
      unselectedItemColor: Colors.grey,
      onTap: (index){
        navbarP.setSelectedIndex(index);
      },
    );
  }
}

