import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';

class WorksPage extends StatefulWidget {
  const WorksPage({super.key});

  @override
  State<WorksPage> createState() => _WorksPageState();
}

class _WorksPageState extends State<WorksPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.maxFinite,
      color: MyColor.scaffold,
      child: Center(
          child: ElevatedButton(onPressed: () {}, child: Text('change theme'))),
    );
  }
}
