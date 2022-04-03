import 'package:flutter/material.dart';

import 'ahades.dart';
import 'quran.dart';
import 'radio.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            x = index;
          });
        },
        backgroundColor: const Color.fromRGBO(183, 147, 95, 1),
        iconSize: 35,
        currentIndex: x,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/radio.png'),
              ),
            label: 'راديو',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/sebha_blue.png'),
            ),
            label: 'راديو',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Group 6.png'),
            ),
            label: 'راديو',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/moshaf_gold.png'),
            ),
            label: 'قران',
          ),
        ],
      ),
      body: getScreen(),
    );
  }

  Widget getScreen(){
    if(x == 0){
      return RadioScreen();
    }else if(x == 1){
      return AhadesScreen();
    }else if(x == 2){
      return AhadesScreen();
    }else{
      return QuranScreen();
    }
  }

}
