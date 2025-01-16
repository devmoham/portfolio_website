import 'package:flutter/material.dart';

class ThemeToggleButton extends StatefulWidget {
  final bool isLightMode;
  final Function onToggle;

  ThemeToggleButton({required this.isLightMode, required this.onToggle});

  @override
  _ThemeToggleButtonState createState() => _ThemeToggleButtonState();
}

class _ThemeToggleButtonState extends State<ThemeToggleButton> {
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onToggle(), // Call the toggle function when pressed
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: 120,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: widget.isLightMode
              ? LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )
              : null,
          color: widget.isLightMode ? null : Colors.black,
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              left: widget.isLightMode ? 0 : 60,
              right: widget.isLightMode ? 60 : 0,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  widget.isLightMode ? Icons.wb_sunny : Icons.nights_stay,
                  size: 30,
                  color: widget.isLightMode ? Colors.yellow : Colors.blueAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
