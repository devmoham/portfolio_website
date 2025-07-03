import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math'; // Needed for rotation calculations
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/widgets/animated_photo.dart';
import 'package:portfolio_website/widgets/social_media_links.dart';
import 'package:url_launcher/url_launcher.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [MyColor.purple, MyColor.scaffold],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'I am Mohamed Mostafa...',
                        textStyle: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        ),
                        speed: Duration(milliseconds: 100),
                      ),
                    ],
                    totalRepeatCount: 1, // If you want to stop after one cycle
                    repeatForever: true, // If you want it to loop continuously
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) => LinearGradient(
                      colors: [Colors.blue, Colors.purple, MyColor.lightpurple],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    ),
                    child: Text(
                      'Flutter Developer',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 60,
                          ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Focused on creating efficient and beautiful mobile apps,\n'
                    'with strong skills in Flutter and Dart.\n'
                    'Passionate about delivering top-notch user experiences.',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.normal,
                          color: Colors.blueGrey[800],
                          fontSize: 20,
                        ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SocialMediaLinks()
                ],
              ),
            ),
          ),
          AnimatedPhoto(),
          SizedBox(
            width: 100,
          ),
        ],
      ),
    );
  }
}
