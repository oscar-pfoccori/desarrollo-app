import 'package:flutter/material.dart';

import 'package:first_app/pages/home/models/available_technology_type.dart';

class TechnologyContainer extends StatefulWidget {
  const TechnologyContainer(
    this.type,
    this.isSelected, {
    super.key,
    required this.onSelect,
  });

  final AvailableTechnologyType type;
  final bool isSelected;
  final void Function(AvailableTechnologyType technology) onSelect;

  @override
  State<TechnologyContainer> createState() {
    return _TechnologyContainerState();
  }
}

class _TechnologyContainerState extends State<TechnologyContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          border: Border.all(
            width: widget.isSelected ? 5.0 : 0,
            color: Colors.yellow,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            widget.type.imageName,
            width: 60,
          ),
        ),
      ),
      onTap: () {
        widget.onSelect(widget.type);
      },
    );
  }
}
