import 'package:flutter/material.dart';

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
      color: Colors.white,
      child: Center(
          child: ElevatedButton(onPressed: () {}, child: Text('change theme'))),
    );
  }
}
