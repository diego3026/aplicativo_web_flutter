import 'package:flutter/material.dart';

import '../../widgets/FooterWidget.dart';
import '../../widgets/NavItem.dart';
import '../../widgets/Navbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.page});

  Widget page;
  final List<String> itemsTitle = ['Sorteos', 'Feeds', 'Contactame', 'Login'];
  final String navTitle = "SORTEO";

  GlobalKey navbarKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Navbar(key: navbarKey, title: navTitle, navItems: [
              NavItem(
                title: itemsTitle[0],
                route: "/sorteos",
              ),
              NavItem(
                title: itemsTitle[1],
                route: "/feeds",
              ),
              NavItem(
                title: itemsTitle[2],
                route: "/contactame",
              ),
              NavItem(
                title: itemsTitle[3],
                route: "/login",
              ),
            ]),
            page,
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
