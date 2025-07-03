import 'package:flutter/material.dart';

class CustomBackgroundContianer extends StatelessWidget {
  final Widget child;
  final Color color;

  const CustomBackgroundContianer(
      {super.key, required this.child, required this.color});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: color,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: child,
    );
  }
}
