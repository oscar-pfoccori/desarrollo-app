import 'package:flutter/material.dart';

import 'package:first_app/pages/home/widgets/technology_container.dart';
import 'package:first_app/pages/home/model/technologies_type.dart';

class AvailableTechnologiesContainer extends StatelessWidget {
  const AvailableTechnologiesContainer({super.key});
  final technologies = TechnologiesType.values;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: technologies
            .map(
              (element) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TechnologyContainer(element),
              ),
            )
            .toList(),
      ),
    );
  }
}
