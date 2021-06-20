import 'package:flutter/material.dart';

class CarouselIndicatorWidget extends StatelessWidget {
  const CarouselIndicatorWidget({
    Key? key,
    this.isSelected = false,
  }) : super(key: key);

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 10.0),
      width: 10.0,
      height: 10.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected
            ? Colors.white.withOpacity(0.7)
            : Colors.grey.withOpacity(0.7),
      ),
    );
  }
}
