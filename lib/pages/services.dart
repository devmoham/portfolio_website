import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math'; // Needed for rotation calculations
import 'package:portfolio_website/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  final Map<String, Uri> _urls = {
    'LinkedIn':
        Uri.parse('https://www.linkedin.com/in/mohamed-mostafa-159969253/'),
    'GitHub': Uri.parse('https://github.com/devmoham'),
    'Facebook': Uri.parse(
        'https://www.facebook.com/profile.php?id=100083573418366&mibextid=ZbWKwL'),
  };

  Future<void> _launchUrl(String key) async {
    final Uri? url = _urls[key];
    if (url != null && !await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.maxFinite,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [MyColor.purple, MyColor.scaffold],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            repeatForever: true,  // If you want it to loop continuously
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
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Text('Download CV'),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(Icons.file_download_outlined)
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(170, 40),
                          backgroundColor: MyColor.purple,
                          foregroundColor: MyColor.scaffold,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () => _launchUrl('Facebook'),
                            child: const CircleAvatar(
                              backgroundColor: MyColor.purple,
                              child: Icon(
                                Icons.facebook_sharp,
                                size: 30,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () => _launchUrl('LinkedIn'),
                            child: CircleAvatar(
                                backgroundColor: MyColor.purple,
                                child: Image.asset(
                                  'assets/images/icons8-linkedin-64.png',
                                  width: 30,
                                  height: 35,
                                )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () => _launchUrl('GitHub'),
                            child: CircleAvatar(
                                backgroundColor: MyColor.purple,
                                child: Image.asset(
                                  'assets/images/icons8-github-48.png',
                                  width: 30,
                                  height: 30,
                                )),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 200),
              child: MouseRegion(
                onEnter: (_) =>
                    setState(() => isHovered = true), // Detect mouse hover
                onExit: (_) =>
                    setState(() => isHovered = false), // Detect mouse leaving
                child: AnimatedRotation(
                  duration: Duration(milliseconds: 200), // Animation duration
                  curve: Curves.fastOutSlowIn, // Smooth easing
                  turns: isHovered ? 0 : 0.01,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [MyColor.darkpurple, MyColor.lightpurple],
                          // begin: Alignment.topLeft,
                          // end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(15.0)),
                    height: 400,
                    width: 400,
                    child: Image.asset('assets/images/mo.png'),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
