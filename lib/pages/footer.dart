import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.maxFinite,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [MyColor.darkpurple, Colors.black])),
      child: Column(
        children: [
          Image.asset(
            'assets/images/icons8-marriott-hotels-48.png',
            height: 100,
            width: 90,
            fit: BoxFit.contain,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Services',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Works.',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Skils.',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Experience.',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Contact.',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
