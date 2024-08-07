import 'package:flutter/material.dart';
import 'package:snapblog/utils/colors.dart';

class TextFieldInpuut extends StatelessWidget {
  const TextFieldInpuut(
      {Key? key,
      required this.textEditingController,
      this.isPass = false,
      required this.hintText,
      required this.textInputType})
      : super(key: key);
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType; //for the specific keyboard

  @override
  Widget build(BuildContext context) {
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        fillColor: bgColor,
        hintText: hintText,
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        contentPadding: const EdgeInsets.all(18),
      ),
      cursorColor: blueAccentColor,
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
