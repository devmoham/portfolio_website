import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/models/skill_item_model.dart';
import 'package:portfolio_website/widgets/skill_item.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  final int index = 0;
  final List<SkillItemModel> skillItems = const [
    SkillItemModel(
      title: 'Flutter',
      image: 'assets/images/skills/icons8-flutter-96.png',
      rate: '97%',
    ),
    SkillItemModel(
      title: 'Dart',
      image: 'assets/images/skills/dart.png',
      rate: '95%',
    ),
    SkillItemModel(
      title: 'Firebase',
      image: 'assets/images/skills/firebase.png',
      rate: '96%',
    ),
    SkillItemModel(
      title: 'Git',
      image: 'assets/images/skills/git.png',
      rate: '93%',
    ),
    SkillItemModel(
      title: 'Postman',
      image: 'assets/images/skills/pngwing.com.png',
      rate: '90%',
    ),
    SkillItemModel(
      title: 'Figma',
      image: 'assets/images/skills/icons8-figma-48.png',
      rate: '90%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      // height: size.height * 0.75,
      width: size.width,
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
          Row(
            children: skillItems.asMap().entries.map((entry) {
              final index = entry.key;
              final skillItem = entry.value;

              if (index == 5) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: SkillItem(
                      skillItem: skillItem,
                      isHover: false,
                    ),
                  ),
                );
              }

              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: SkillItem(
                    skillItem: skillItem,
                    isHover: false,
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: skillItems.asMap().entries.map((entry) {
              final index = entry.key;
              final skillItem = entry.value;
              return Text(
                '${skillItem.title}',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: MyColor.purple,
                    fontWeight: FontWeight.normal,
                    fontSize: 17),
              );
            }).toList(),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
