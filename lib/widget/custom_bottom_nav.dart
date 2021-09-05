
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      showUnselectedLabels: true,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      currentIndex: selectedIndex,

      onTap: (int index){
        selectedIndex = index;
        setState(() {
          switch(index){
            case 1:
              Navigator.pushNamed(context, "splash");
              break;
            case 2:
              Navigator.pushNamed(context, '/cart');
              break;
            default:
              return null;
          }
        });
      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            label: 'Shopping Cart'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: 'Profile'
        ),
      ],

    );
  }
}
