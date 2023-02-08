import 'package:flutter/material.dart';

import '../config/color_config.dart';

class ThemeTile extends StatelessWidget {
  final String title;
  final String value;
  const ThemeTile({Key? key, required this.title, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: ColorConfig.darkGreen,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Offstage(
                offstage: value == '',
                child: Text(
                  value,
                  style: TextStyle(
                    color: ColorConfig.darkGreen,
                  ),
                ),
              ),
            ],
          ),
          Icon(
            Icons.edit,
            color: ColorConfig.darkGreen,
          ),
        ],
      ),
    );
  }
}
