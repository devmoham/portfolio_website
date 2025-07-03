import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/constants/colors.dart';

class MobileCustomAppbar extends StatelessWidget {
  const MobileCustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: Image.asset(
        'assets/images/icons8-marriott-hotels-48.png',
        height: 100,
        width: 90,
        fit: BoxFit.contain,
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.list)),
      ],
    );
  }
}
