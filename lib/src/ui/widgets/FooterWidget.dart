import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.black),
        child: const Column(
          children: [
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.black,
                )
              ],
            )
          ],
        ));
  }
}
