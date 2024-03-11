import 'package:flutter/material.dart';

import 'package:first_app/widgets/styled_text.dart';

class CenterContainer extends StatelessWidget {
  const CenterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/smartphone.png',
            width: 200,
          ),
          const SizedBox(height: 20),
          const StyledText(
            'Hello word',
            fontWeight: FontWeight.w400,
            fontFamily: 'IndieFlower',
          ),
          const StyledText(
            'Flutter',
            fontWeight: FontWeight.w800,
          ),
        ],
      ),
    );
  }
}
