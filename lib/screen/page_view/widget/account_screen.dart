import 'package:cupee/screen/profile/notification_screen.dart';
import 'package:cupee/screen/profile/profile_screen.dart';
import 'package:cupee/screen/profile/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/color_config.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 24,),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              InkWell(
                onTap: (){
                  Get.to(NotificationScreen());
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    color: ColorConfig.dimGrey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.notifications, color: ColorConfig.darkGreen,size: 50,),
                      SizedBox(height: 8,),
                      Text('Notification', style: TextStyle(color: ColorConfig.darkGreen,fontSize: 16,),)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Get.to(ProfileScreen());
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    color: ColorConfig.dimGrey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_pin_rounded, color: ColorConfig.darkGreen,size: 50,),
                      SizedBox(height: 8,),
                      Text('Profile', style: TextStyle(color: ColorConfig.darkGreen,fontSize: 16,),)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Get.to(SettingScreen());
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    color: ColorConfig.dimGrey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.settings, color: ColorConfig.darkGreen,size: 50,),
                      SizedBox(height: 8,),
                      Text('Setting', style: TextStyle(color: ColorConfig.darkGreen,fontSize: 16,),)
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
