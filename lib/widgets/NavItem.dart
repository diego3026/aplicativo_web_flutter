import 'package:flutter/material.dart';

class NavItem extends StatefulWidget {
  const NavItem({super.key,required this.title});

  final String title;

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {

  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (event) {
          setState(() {
            _isHover = true;
          });
        },
        onExit: (event) {
          setState(() {
            _isHover = false;
          });
        },
        child: GestureDetector(
          child: Container(
              color: _isHover || widget.title=="Login" ? Colors.blueAccent : Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                child: Text(
                  widget.title,
                  style: TextStyle(color: Colors.white),),
              )),
        ));
  }
}
