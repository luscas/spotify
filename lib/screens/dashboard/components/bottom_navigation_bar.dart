import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 151.0,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(18,18,18,0.0),
              Color.fromRGBO(18,18,18,0.46875),
              Color(0xFF121212),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 60.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                navigationItem(
                  selected: true,
                  label: 'Home',
                  icon: 'images/home.png'
                ),

                navigationItem(
                  selected: false,
                  label: 'Search',
                  icon: 'images/search.png'
                ),

                navigationItem(
                  selected: false,
                  label: 'Library',
                  icon: 'images/library.png'
                )
              ],
            ),
          ),
        )
      ),
    );
  }

  Widget navigationItem({ required bool selected, required String label, required String icon }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(icon, width: 25.0, height: 24.0, color: selected ? Colors.white : Colors.white70),
        const SizedBox(height: 6.0),
        Text(label,
          style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500, color: selected ? Colors.white : Colors.white70)
        )
      ],
    );
  }
}