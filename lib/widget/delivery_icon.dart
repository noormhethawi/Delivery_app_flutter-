import 'package:flutter/material.dart';
class DeliveryIcon extends StatelessWidget {
  final double? width;
  final double? height;
  final Gradient? gradient;
  final double radius;
  final IconData? icon;
  final void Function()? onTap;
  final Color? color;
  final double? iconSize;
  final Color? iconColor;
  const DeliveryIcon({
    super.key, this.width, this.height, this.gradient, required this.radius, this.icon, this.onTap, this.color, this.iconSize, this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(radius),
          color: color,
        ),
        child: Icon(icon, size: iconSize, color: iconColor,),
      ),
    );
  }
}