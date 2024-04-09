import 'package:flutter/material.dart';

import 'NavItem.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key,required this.title, required this.navItems});

  final String title;
  final List<NavItem> navItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 18),
        child: Row(
          children: <Widget>[
            Expanded(child: Text(title,style: TextStyle(color: Colors.white)),),
            ...navItems
          ],
        ),
      ),
    );
  }
}
