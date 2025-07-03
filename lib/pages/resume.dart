import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/widgets/card_item_widget.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      width: double.maxFinite,
      color: MyColor.scaffold,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/icons8-badge-48.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.purple,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(
                        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                      ),
                      child: Text(
                        'My Experience',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                            ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const CardItemWidget(
                  date: '2020 - 2023',
                  event: 'Programming course',
                  place: 'Harverd University',
                ),
                const SizedBox(
                  height: 25,
                ),
                const CardItemWidget(
                  date: '2020 - 2023',
                  event: 'Programming course',
                  place: 'Harverd University',
                ),
                const SizedBox(
                  height: 25,
                ),
                const CardItemWidget(
                  date: '2020 - 2023',
                  event: 'Programming course',
                  place: 'Harverd University',
                ),
                const SizedBox(
                  height: 25,
                ),
                const CardItemWidget(
                  date: '2020 - 2023',
                  event: 'Programming course',
                  place: 'Harverd University',
                ),
              ],
            ),
            const SizedBox(
              width: 130,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/icons8-student-male-skin-type-1-100.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.purple,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(
                        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                      ),
                      child: Text(
                        'My Education',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                            ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const CardItemWidget(
                  date: '2020 - 2023',
                  event: 'Programming course',
                  place: 'Harverd University',
                ),
                const SizedBox(
                  height: 25,
                ),
                const CardItemWidget(
                  date: '2020 - 2023',
                  event: 'Programming course',
                  place: 'Harverd University',
                ),
                const SizedBox(
                  height: 25,
                ),
                const CardItemWidget(
                  date: '2020 - 2023',
                  event: 'Programming course',
                  place: 'Harverd University',
                ),
                const SizedBox(
                  height: 25,
                ),
                const CardItemWidget(
                  date: '2020 - 2023',
                  event: 'Programming course',
                  place: 'Harverd University',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
