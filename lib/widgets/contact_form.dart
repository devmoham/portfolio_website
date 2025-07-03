import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/text_field_widget.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Row(children: [
        Expanded(child: TextFieldWidget(hintText: 'First name')),
        SizedBox(
          width: 15,
        ),
        Expanded(child: TextFieldWidget(hintText: 'Last name')),
      ]),
      SizedBox(
        height: 15,
      ),
      Row(children: [
        Expanded(child: TextFieldWidget(hintText: 'Email address')),
        SizedBox(
          width: 15,
        ),
        Expanded(child: TextFieldWidget(hintText: 'Phone number')),
      ]),
      SizedBox(
        height: 15,
      ),
      TextFieldWidget(hintText: '-Please chose an option-'),
      SizedBox(
        height: 15,
      ),
      TextFieldWidget(hintText: 'Message', isMessage: true),
    ]);
  }
}
