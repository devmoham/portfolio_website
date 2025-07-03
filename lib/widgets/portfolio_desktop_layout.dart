import 'package:flutter/material.dart';
import 'package:portfolio_website/pages/contact.dart';
import 'package:portfolio_website/pages/footer.dart';
import 'package:portfolio_website/pages/resume.dart';
import 'package:portfolio_website/pages/services.dart';
import 'package:portfolio_website/pages/skills.dart';
import 'package:portfolio_website/pages/testimonials.dart';
import 'package:portfolio_website/pages/works.dart';
import 'package:portfolio_website/widgets/custom_appbar.dart';

class PortfolioDeskTopLayout extends StatefulWidget {
  const PortfolioDeskTopLayout({super.key});

  @override
  State<PortfolioDeskTopLayout> createState() => _PortfolioDeskTopLayoutState();
}

class _PortfolioDeskTopLayoutState extends State<PortfolioDeskTopLayout> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(scrollController: _scrollController),
      body: Scrollbar(
        controller: _scrollController,
        trackVisibility: true,
        interactive: true,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: const [
              ServicesPage(),
              WorksPage(),
              SkillsPage(),
              TestimonialsPage(),
              ResumePage(),
              ContactPage(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
