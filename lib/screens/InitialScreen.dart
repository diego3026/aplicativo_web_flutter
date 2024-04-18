import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sorteos_crm/widgets/CardSorteo.dart';
import 'package:sorteos_crm/widgets/Portrait.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  List<CardSorteo> sorteos = List.empty();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Potrait(
            src:
                "https://th.bing.com/th/id/OIP.yP0fg5-5qevo1uHrKxYQ8AHaDs?w=294&h=174&c=7&r=0&o=5&pid=1.7"),
        InitialContent()
      ],
    );
  }
}

class InitialContent extends StatefulWidget {
  const InitialContent({super.key});

  @override
  State<StatefulWidget> createState() => _InitialContentState();
}

class _InitialContentState extends State<InitialContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Text("Sorteos"), Text("Sorteos2")],
      ),
    );
  }
}
