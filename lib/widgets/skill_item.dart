import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/models/skill_item_model.dart';

class SkillItem extends StatefulWidget {
  final SkillItemModel skillItem;
  bool isHover;
  SkillItem({super.key, required this.skillItem, required this.isHover});

  @override
  State<SkillItem> createState() => _SkillItemState();
}

class _SkillItemState extends State<SkillItem> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        widget.isHover = true;
      }),
      onExit: (_) => setState(() {
        widget.isHover = false;
      }),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
            color: widget.isHover ? MyColor.purple : MyColor.scaffold,
            borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Image.asset(
              widget.skillItem.image,
              fit: BoxFit.contain,
              height: 50,
              width: 50,
            ),
            const SizedBox(height: 20),
            Text(
              '${widget.skillItem.rate}',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: widget.isHover ? MyColor.scaffold : MyColor.purple),
            ),
          ],
        ),
      ),
    );
  }
}
