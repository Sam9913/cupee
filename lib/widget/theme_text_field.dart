import 'package:flutter/material.dart';

import '../config/color_config.dart';

class ThemeTextField extends StatefulWidget {
  final bool? isObscure;
  final String labelText;
  final String? hintText;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final double? contentPadding;
  final double? width;
  const ThemeTextField({
    Key? key,
    this.isObscure,
    required this.labelText,
    this.hintText,
    this.prefixWidget,
    this.suffixWidget,
    this.contentPadding,
    this.width,
  }) : super(key: key);

  @override
  State<ThemeTextField> createState() => _ThemeTextFieldState();
}

class _ThemeTextFieldState extends State<ThemeTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? MediaQuery.of(context).size.width * 0.4,
      child: TextField(
        obscureText: widget.isObscure ?? false,
        style: TextStyle(
          color: ColorConfig.pink,
        ),
        cursorColor: ColorConfig.pink,
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: TextStyle(color: ColorConfig.pink),
          hintText: widget.hintText ?? '',
          hintStyle: TextStyle(color: ColorConfig.pink),
          isDense: true,
          contentPadding: EdgeInsets.all(widget.contentPadding ?? 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: ColorConfig.pink),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: ColorConfig.pink),
          ),
          suffix: widget.suffixWidget,
          prefix: widget.prefixWidget,
        ),
      ),
    );
  }
}
