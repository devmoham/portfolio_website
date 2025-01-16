import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_website/constants/colors.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  List<String> numbers = [
    '92%',
    '99%',
    '85%',
    '95%',
    '100%',
  ];

  List<String> imageList = [
    'assets/images/skills/icons8-figma-48.png',
    'assets/images/skills/icons8-flutter-96.png',
    'assets/images/skills/dart.png',
    'assets/images/skills/android-studio-icon.png',
    'assets/images/skills/pngwing.com.png',
  ];

  List<Color> _colorsText = [
    MyColor.purple,
    MyColor.purple,
    MyColor.purple,
    MyColor.purple,
    MyColor.purple,
  ];

  List<Color> _colors = [
    MyColor.scaffold,
    MyColor.scaffold,
    MyColor.scaffold,
    MyColor.scaffold,
    MyColor.scaffold,
  ];

  void _onEnter(int index) {
    setState(() {
      _colors[index] = MyColor.purple;
      _colorsText[index] = MyColor.scaffold; // Change text color on hover
    });
  }

  void _onExit(int index) {
    setState(() {
      _colors[index] = MyColor.scaffold;
      _colorsText[index] = MyColor.purple; // Reset text color when not hovered
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (bounds) => LinearGradient(
              colors: [Colors.blue, Colors.purple, MyColor.lightpurple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Text(
                'My Skills',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'We put your ideas and thus your wishes in the form of a unique web project that\n'
            'inspires you and your customers.',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.normal, fontSize: 20),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 240,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 310),
              itemCount: _colors.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0, right: 19),
                  child: MouseRegion(
                    onEnter: (_) => _onEnter(index),
                    onExit: (_) => _onExit(index),
                    child: Container(
                      width: 240,
                      height: 200,
                      decoration: BoxDecoration(
                        color: _colors[index],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 30,
                            left: 75,
                            child: Image.asset(
                              imageList[index],
                              fit: BoxFit.contain,
                              height: 90,
                              width: 90,
                            ),
                          ),
                          Positioned(
                            top: 150,
                            left: 100,
                            child: Text(
                              numbers[index],
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: _colorsText[index],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 40,
            child: Row(
              children: [
                SizedBox(width: 405),
                Text(
                  'Figma',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: MyColor.purple),
                ),
                SizedBox(
                  width: 200,
                ),
                Text(
                  'Flutter',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: MyColor.purple),
                ),
                SizedBox(
                  width: 230,
                ),
                Text(
                  'Dart',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: MyColor.purple),
                ),
                SizedBox(
                  width: 195,
                ),
                Text(
                  'Android Studio',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: MyColor.purple),
                ),
                SizedBox(
                  width: 160,
                ),
                Text(
                  'Postman',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: MyColor.purple),
                ),
                SizedBox(width: 405),
              ],
            ),
          )
        ],
      ),
    );
  }
}
