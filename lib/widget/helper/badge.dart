import 'package:flutter/material.dart';
import 'package:focalx_project/core/service/media_query.dart';
import '../../core/const_data/app_colors.dart';

class Badg extends StatelessWidget {
  const Badg({
    required Key key,
    required this.child,
    required this.value,
    required this.color,
  }) : super(key: key);

  final Widget child;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 8,
          top: 8,
          child: Container(
            padding: EdgeInsets.all(MediaQueryUtil.screenWidth * 0.005),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: AppColors.deepPurple,
            ),
            constraints: BoxConstraints(
              minWidth: MediaQueryUtil.screenWidth * 0.04,
              minHeight: MediaQueryUtil.screenWidth * 0.04,
            ),
            child: Text(
              value,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: MediaQueryUtil.screenWidth * 0.025,
              ),
            ),
          ),
        )
      ],
    );
  }
}
