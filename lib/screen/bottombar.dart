import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

int selectedIndex = 0;

class _NavState extends State<Nav> {
  List<Widget> _widgetOptions = <Widget>[
    // HomneScreen(),
    // CattgoryPage(),
    // Orderage(),
    // Deliver(),
    // MyCartPage(),
  ];

  void _onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // selectedItemColor: Colors.white,
        selectedItemColor: Colors.grey,
        elevation: 0,
        backgroundColor: Colors.black,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontSize: 8),
        unselectedLabelStyle: TextStyle(fontSize: 8),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            // backgroundColor: primaryLight,
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Meet',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus_filled),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_shopping_cart,
            ),
            label: 'Me',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: _onItemTap,
        // fixedColor: Colors.orange,
      ),
    );
  }
}
