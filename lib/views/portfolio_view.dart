import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/adaptive_layout_widget.dart';
import 'package:portfolio_website/widgets/portfolio_desktop_layout.dart';
import 'package:portfolio_website/widgets/portfolio_mobile_layout.dart';
import 'package:portfolio_website/widgets/portfolio_tablet_layout.dart';

class PortfolioView extends StatefulWidget {
  const PortfolioView({super.key});

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context)=> const PortfolioMobileLayout(),
          tabletLayout: (context)=> const PortfolioTabletLayout(),
          desktopLayout: (context)=> const PortfolioDeskTopLayout()),
    );
  }
}
