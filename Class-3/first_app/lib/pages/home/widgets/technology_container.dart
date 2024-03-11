import 'package:flutter/material.dart';

import 'package:first_app/pages/home/model/technologies_type.dart';

class TechnologyContainer extends StatelessWidget {
  const TechnologyContainer(this.technology, {super.key});
  final TechnologiesType technology;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Image.asset(
          technology.image,
          width: 60,
        ),
      ),
    );
  }
}
