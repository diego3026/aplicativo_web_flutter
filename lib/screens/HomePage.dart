import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sorteos_crm/screens/InitialScreen.dart';
import 'package:sorteos_crm/widgets/NavItem.dart';
import 'package:sorteos_crm/widgets/Navbar.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> navItems = ["Sorteos", "Feeds", "Contact me", "Login"];
  String titleNavBar = "SORTEO";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Navbar(
              title: titleNavBar,
              navItems: [
                NavItem(title: navItems[0]),
                NavItem(title: navItems[1]),
                NavItem(title: navItems[2]),
                NavItem(title: navItems[3]),
              ],
            ),
            InitialScreen()
            //FOOTER
          ],
        ),
      ),
    );
  }
}
