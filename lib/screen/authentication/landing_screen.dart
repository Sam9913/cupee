import 'package:cupee/screen/authentication/login_screen.dart';
import 'package:cupee/screen/authentication/register_screen.dart';
import 'package:cupee/screen/page_view/screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/color_config.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('CUPEE', style: TextStyle(fontSize: 50, color: ColorConfig.pink, fontWeight: FontWeight.bold,),),
            SizedBox(
              height: 8,
            ),
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width * 0.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              onPressed: () {
                Get.to(LoginScreen());
              },
              color: ColorConfig.pink,
              child: Text(
                'Login',
                style: TextStyle(
                  color: ColorConfig.lightGold,
                  fontSize: 16,
                ),
              ),
            ),
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width * 0.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              onPressed: () {
                Get.to(RegisterScreen());
              },
              color: ColorConfig.pink,
              child: Text(
                'Register',
                style: TextStyle(
                  color: ColorConfig.lightGold,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: (){
                Get.to(PageViewScreen());
              },
              child: Text(
                'Continue As Guest',
                style: TextStyle(
                  color: ColorConfig.pink,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
