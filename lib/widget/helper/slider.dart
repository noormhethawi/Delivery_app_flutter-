import 'package:flutter/material.dart';

class SliderDots extends StatelessWidget {
  final int totalDots;
  final int currentIndex;

  const SliderDots(
      {super.key, required this.totalDots, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        totalDots,
        (index) => buildDot(index == currentIndex),
      ),
    );
  }

  Widget buildDot(bool isActive) {
    return Container(
      width: isActive ? 30 : 22,
      height: 5,
      margin:
          const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        shape: BoxShape.rectangle,
        color: isActive ? Colors.white : Colors.green,
      ),
    );
  }
}
