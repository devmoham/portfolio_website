import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/pages/contact.dart';
import 'package:portfolio_website/pages/footer.dart';
import 'package:portfolio_website/pages/resume.dart';
import 'package:portfolio_website/pages/services.dart';
import 'package:portfolio_website/pages/skills.dart';
import 'package:portfolio_website/pages/testimonials.dart';
import 'package:portfolio_website/pages/works.dart';
import 'package:portfolio_website/widgets/toggle_button.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key,});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final ScrollController _scrollController = ScrollController();

  void _scrollToSection(double position) {
    _scrollController.animateTo(
      position,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: SafeArea(
        child: Scrollbar(
          controller: _scrollController,
          trackVisibility: true,
          interactive: true,
          child: ListView(
            controller: _scrollController,
            children: const [
              ServicesPage(),
              WorksPage(),
              ResumePge(),
              SkillsPage(),
              TestimonialsPage(),
              ContactPage(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
