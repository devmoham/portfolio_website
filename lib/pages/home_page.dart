import 'package:flutter/material.dart';
import 'package:portfolio_website/pages/Mobile_layout/mobile_services_layout.dart';
import 'package:portfolio_website/pages/contact.dart';
import 'package:portfolio_website/pages/footer.dart';
import 'package:portfolio_website/pages/resume.dart';
import 'package:portfolio_website/pages/services.dart';
import 'package:portfolio_website/pages/skills.dart';
import 'package:portfolio_website/pages/works.dart';
import 'package:portfolio_website/widgets/custom_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        scrollController: _scrollController,
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return SafeArea(
            child: Scrollbar(
              controller: _scrollController,
              trackVisibility: true,
              interactive: true,
              child: ListView(
                controller: _scrollController,
                children: const [
                  MobileServicesLayout(),
                ],
              ),
            ),
          );
        } else {
          return SafeArea(
            child: Scrollbar(
              controller: _scrollController,
              trackVisibility: true,
              interactive: true,
              child: ListView(
                controller: _scrollController,
                children: const [
                  ServicesPage(),
                  WorksPage(),
                  ResumePage(),
                  SkillsPage(),
                  // TestimonialsPage(),
                  ContactPage(),
                  Footer(),
                ],
              ),
            ),
          );
        }
      }),
    );
  }
}
