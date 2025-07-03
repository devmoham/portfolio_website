import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/widgets/animated_photo.dart';
import 'package:portfolio_website/widgets/social_media_links.dart';

class MobileServicesLayout extends StatefulWidget {
  const MobileServicesLayout({super.key});

  @override
  State<MobileServicesLayout> createState() => _MobileServicesLayoutState();
}

class _MobileServicesLayoutState extends State<MobileServicesLayout> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 1000,
        width: double.maxFinite,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [MyColor.purple, MyColor.scaffold],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        fontSize: 50,
                      ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: AnimatedPhoto(),
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
        ));
  }
}
