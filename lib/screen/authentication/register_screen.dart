import 'package:flutter/material.dart';

import '../../config/color_config.dart';
import '../../widget/theme_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
            ThemeTextField(
              labelText: 'Name',
            ),
            SizedBox(
              height: 8,
            ),
            ThemeTextField(
              contentPadding: 6,
              labelText: 'Password',
              isObscure: true,
              suffixWidget: Icon(
                Icons.remove_red_eye_rounded,
                color: ColorConfig.pink,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ThemeTextField(
              contentPadding: 6,
              labelText: 'Confirm Password',
              isObscure: true,
              suffixWidget: Icon(
                Icons.remove_red_eye_rounded,
                color: ColorConfig.pink,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ThemeTextField(
              labelText: 'Email',
            ),
            SizedBox(
              height: 8,
            ),
            ThemeTextField(
              labelText: 'Phone Number',
              prefixWidget: Text('+60 ', style: TextStyle(color: ColorConfig.pink,),),
            ),
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
              onPressed: () {},
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
            Text(
              'Got account? Log in here',
              style: TextStyle(
                color: ColorConfig.pink,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}

