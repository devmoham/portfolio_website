import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';

class IconWithLabelWidget extends StatelessWidget {
  final String title;
  final String value;
 final IconData? icon;
  const IconWithLabelWidget(
      {super.key, required this.title, required this.value, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: MyColor.purple,
          radius: 30,
          child: Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
        ),
       const SizedBox(
          width: 19,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.normal, fontSize: 17),
            ),
           const SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                value,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
          ],
        )
      ],
    );
  }
}
