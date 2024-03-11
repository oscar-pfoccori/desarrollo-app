import 'package:flutter/material.dart';

import 'package:first_app/pages/home/widgets/styled_text.dart';
import 'package:first_app/pages/home/widgets/technology_container.dart';
import 'package:first_app/pages/home/models/available_technology_type.dart';

class AvailableTechnologies extends StatefulWidget {
  const AvailableTechnologies({super.key});

  @override
  State<AvailableTechnologies> createState() {
    return _AvailableTechnologiesState();
  }
}

class _AvailableTechnologiesState extends State<AvailableTechnologies> {
  final availableTecnologies = AvailableTechnologyType.values;
  AvailableTechnologyType? tecnologySelected;

  void _selectTechnology(AvailableTechnologyType technology) {
    setState(() {
      tecnologySelected = technology;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: availableTecnologies
              .map(
                (tecnology) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TechnologyContainer(
                    tecnology,
                    tecnologySelected == tecnology,
                    onSelect: _selectTechnology,
                  ),
                ),
              )
              .toList(),
        ),
        if (tecnologySelected != null)
          Container(
            padding: const EdgeInsets.only(top: 40),
            child: StyledText(
              tecnologySelected!.title,
              fontWeight: FontWeight.w800,
            ),
          ),
      ],
    );
  }
}
