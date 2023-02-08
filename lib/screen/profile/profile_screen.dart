import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/color_config.dart';
import '../../widget/theme_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.lightGold,
      appBar: AppBar(
        backgroundColor: ColorConfig.lightGold,
        title: Text(
          'Profile',
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
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ThemeTile(title: 'Name', value: 'Tester'),
            Divider(color: ColorConfig.darkGreen,),
            ThemeTile(title: 'Phone No', value: '+60-123456789'),
            Divider(color: ColorConfig.darkGreen,),
            ThemeTile(title: 'Password', value: ''),
          ],
        ),
      ),
    );
  }
}
