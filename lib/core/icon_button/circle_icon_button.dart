// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final Color? backgroundColor;
  final double? radius;
  final double? iconSize;
  final Color? iconColor;
  final IconData iconData;
  final VoidCallback onPressed;

  const CircleIconButton({
    Key? key,
    this.backgroundColor,
    this.radius,
    this.iconSize,
    this.iconColor,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: radius,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          iconData,
          size: iconSize,
          color: iconColor,
        ),
      ),
    );
  }
}
