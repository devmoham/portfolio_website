import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/widgets/mobile_custom_appbar.dart';

class CustomAppbar extends StatefulWidget implements PreferredSizeWidget {
  final ScrollController scrollController;

  const CustomAppbar({super.key, required this.scrollController});

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  void _scrollToSection(double position) {
    widget.scrollController.animateTo(
      position,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return MobileCustomAppbar();
      } else {
        return AppBar(
          backgroundColor: Colors.transparent,
          actionsIconTheme: const IconThemeData(
              applyTextScaling: true,
              color: MyColor.darkpurple,
              size: 50,
              shadows: [BoxShadow(blurStyle: BlurStyle.outer)]),
          leading: Image.asset(
            'assets/images/icons8-marriott-hotels-48.png',
            height: 100,
            width: 90,
            fit: BoxFit.contain,
          ),
          leadingWidth: 120,
          title: Text(
            'mohamed.mostaf432100@gmail.com',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: MyColor.lightpurple,
                  fontSize: 17,
                ),
          ),
          actions: [
            TextButton(
                onPressed: () => _scrollToSection(0),
                child: const Text(
                  'Services',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            TextButton(
                onPressed: () => _scrollToSection(600),
                child: const Text(
                  'Works',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            TextButton(
                onPressed: () => _scrollToSection(1200),
                child: const Text(
                  'Resume',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            TextButton(
                onPressed: () => _scrollToSection(1800),
                child: const Text(
                  'Skills',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            TextButton(
                onPressed: () => _scrollToSection(2400),
                child: const Text(
                  'Testimonials',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            TextButton(
                onPressed: () => _scrollToSection(3000),
                child: const Text(
                  'Contact',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              width: 60,
            )
          ],
        );
      }
    });
  }
}
