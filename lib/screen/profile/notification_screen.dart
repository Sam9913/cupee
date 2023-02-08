import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/color_config.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.lightGold,
      appBar: AppBar(
        backgroundColor: ColorConfig.lightGold,
        title: Text('Notifications', style: TextStyle(color: ColorConfig.darkGreen),),
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Get.back();
          },
          child: Padding(
            padding: EdgeInsets.only(top:10, left: 20,),
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
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorConfig.dimGrey,
              ),
              child: Text('Your slot on xxx will be next in 5 minutes',style: TextStyle(color: ColorConfig.darkGreen,),),
            ),
            SizedBox(height: 8,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorConfig.dimGrey,
              ),
              child: Text('You have booked slot on xxx',style: TextStyle(color: ColorConfig.darkGreen,),),
            ),
          ],
        ),
      ),
    );
  }
}
