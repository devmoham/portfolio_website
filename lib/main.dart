import 'package:flutter/material.dart';
import 'package:portfolio_website/views/portfolio_view.dart';


void main() {
  runApp(const MyPortfolio());
}


class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      home:  PortfolioView(),
    );
  }
}


