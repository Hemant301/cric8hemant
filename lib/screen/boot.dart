import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:cric8hemant/screen/book.dart';
import 'package:cric8hemant/screen/home.dart';
import 'package:cric8hemant/screen/learn.dart';
import 'package:cric8hemant/screen/meet.dart';
import 'package:cric8hemant/screen/myprofile.dart';
import 'package:cric8hemant/screen/profile.dart';
import 'package:flutter/material.dart';

class Boot extends StatefulWidget {
  const Boot({Key? key}) : super(key: key);

  @override
  State<Boot> createState() => _BootState();
}

class _BootState extends State<Boot> {
  int index = 0;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPages(),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: index,
        backgroundColor: Colors.black,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        containerHeight: 70,
        onItemSelected: (index) => setState(() => this.index = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
            activeColor: Color.fromARGB(255, 109, 255, 182),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.wc, color: Colors.white),
            title: Text('Meet', style: TextStyle(color: Colors.white)),
            activeColor: Color.fromARGB(255, 137, 255, 196),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.receipt_long, color: Colors.white),
            title: Text('Learn', style: TextStyle(color: Colors.white)),
            activeColor: Color.fromARGB(255, 24, 255, 220),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.redeem, color: Colors.white),
            title: Text(
              'Book',
              style: TextStyle(color: Colors.white),
            ),
            activeColor: Color.fromARGB(255, 24, 255, 220),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            title: Text(
              'Profile',
              style: TextStyle(color: Colors.white),
            ),
            activeColor: Color.fromARGB(255, 24, 255, 220),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget buildBody() => Center(child: Text("hii"));
  Widget buildPages() {
    switch (index) {
      case 1:
        return MeetPage();
      case 2:
        return LearnPage();
      case 3:
        return BookPage();
      case 4:
        return MyProfile();

      case 0:

      default:
        return HomePage();
    }
  }
}
