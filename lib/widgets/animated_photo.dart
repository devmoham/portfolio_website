import 'package:flutter/cupertino.dart';
import 'package:portfolio_website/constants/colors.dart';

class AnimatedPhoto extends StatefulWidget {
  const AnimatedPhoto({super.key});

  @override
  State<AnimatedPhoto> createState() => _AnimatedPhotoState();
}

class _AnimatedPhotoState extends State<AnimatedPhoto> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true), // Detect mouse hover
      onExit: (_) => setState(() => isHovered = false), // Detect mouse leaving
      child: AnimatedRotation(
        duration: Duration(milliseconds: 200), // Animation duration
        curve: Curves.fastOutSlowIn, // Smooth easing
        turns: isHovered ? 0 : 0.01,
        child: Container(
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [MyColor.darkpurple, MyColor.lightpurple],
                // begin: Alignment.topLeft,
                // end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(15.0)),
          height: 400,
          width: 400,
          child: Image.asset('assets/images/mo.png'),
        ),
      ),
    );
  }
}
