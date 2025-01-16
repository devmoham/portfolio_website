import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';

class CardItemWidget extends StatelessWidget {
  final String date;
  final String event;
  final String place;
  const CardItemWidget({super.key, required this.date, required this.event, required this.place});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 30, top: 15, bottom: 15, right: 180),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              date,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: MyColor.purple),
            ),
            Text(
              event,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              place,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.normal, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
