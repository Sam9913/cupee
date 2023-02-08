import 'package:flutter/material.dart';
import 'package:swipe/swipe.dart';

import '../config/color_config.dart';

class ThemeBar extends StatelessWidget {
  final int index;
  final Function() onSwipeRight;
  final Function() onSwipeLeft;
  const ThemeBar({
    Key? key,
    required this.index,
    required this.onSwipeRight,
    required this.onSwipeLeft,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Swipe(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            index == 0
                ? Icons.search
                : index == 1
                    ? Icons.home
                    : Icons.person,
            color: ColorConfig.darkGreen,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorConfig.dimGrey,
              ),
              child: Icon(
                index == 0
                    ? Icons.home
                    : index == 1
                        ? Icons.person
                        : Icons.search,
                color: ColorConfig.darkGreen,
                size: 35,
              ),
            ),
          ),
          Icon(
            index == 0
                ? Icons.person
                : index == 1
                    ? Icons.search
                    : Icons.home,
            color: ColorConfig.darkGreen,
          ),
        ],
      ),
      onSwipeLeft: onSwipeLeft,
      onSwipeRight: onSwipeRight,
    );
  }
}
