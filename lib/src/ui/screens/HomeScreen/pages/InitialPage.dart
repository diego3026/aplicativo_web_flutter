import 'package:flutter/material.dart';

import '../../../widgets/FeedWidget.dart';
import '../../../widgets/Portada.dart';
import '../../../widgets/SorteoWidget.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [Portada(), SorteoWidget(), FeedWidget()],
      ),
    );
  }
}
