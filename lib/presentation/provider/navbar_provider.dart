import 'package:flutter/material.dart';

import '../screens/explore/explore_screen.dart';
import '../screens/inbox/inbox_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/trips/trips_screen.dart';
import '../screens/wish_list/wish_list_screen.dart';

class NavbarProvider with ChangeNotifier{
  final List<Widget> _screens  = const [
    ExploreScreen(),
    WishListScreen(),
    TripsScreen(),
    InboxScreen(),
    ProfileScreen(),
  ];

  int _selectedIndex = 0 ;

  int get selectedIndex => _selectedIndex;
  Widget get currentScreen => _screens[selectedIndex];

  setSelectedIndex(int index){
    _selectedIndex = index;
    notifyListeners();
  }
}