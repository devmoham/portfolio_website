import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';

class TextFieldWidget extends StatefulWidget {
  final String hintText;

  final bool isMessage;

  const TextFieldWidget({
    super.key,
    required this.hintText,
    this.isMessage = false,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.isMessage ? 7 : 1,
      decoration: InputDecoration(
        contentPadding: widget.isMessage
            ? const EdgeInsets.symmetric(
                vertical: 20.0, horizontal: 15.0) // Larger padding for message
            : null, // const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        fillColor: MyColor.scaffold,
        filled: true,
        hintText: widget.hintText,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black54),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: MyColor.purple),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
