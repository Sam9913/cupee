import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/color_config.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.lightGold,
      appBar: AppBar(
        backgroundColor: ColorConfig.lightGold,
        title: Text(
          'Settings',
          style: TextStyle(color: ColorConfig.darkGreen),
        ),
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Get.back();
          },
          child: Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 20,
            ),
            child: CircleAvatar(
              backgroundColor: ColorConfig.darkGreen,
              child: Icon(
                Icons.chevron_left_rounded,
                color: ColorConfig.lightGold,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 24, 16, 0),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorConfig.dimGrey,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Language',
                    style: TextStyle(
                      color: ColorConfig.darkGreen,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'English',
                    style: TextStyle(
                      color: ColorConfig.darkGreen,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorConfig.dimGrey,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Version',
                    style: TextStyle(
                      color: ColorConfig.darkGreen,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '1.0.0',
                    style: TextStyle(
                      color: ColorConfig.darkGreen,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
