import 'package:dokandar/configs/app_colors.dart';
import 'package:dokandar/views/auth/otp.dart';
import 'package:dokandar/widgets/app_appbar.dart';
import 'package:dokandar/widgets/app_button.dart';
import 'package:dokandar/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context: context, title: 'Sing Up',bottom: false),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Text('Create New Account\n',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 25
            ),
            ),

            //input section
            appTextFormField(hintText: 'Full Name'),
            const SizedBox(height: 8,),
            appTextFormField(hintText: 'Email Address', keyboardType: TextInputType.emailAddress),
            const SizedBox(height: 8,),
            appTextFormField(hintText: 'Apply Referral Code (optional)'),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: '\nBy siging up your accept the',
                      style: TextStyle(
                          color: AppColors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    children: [
                      TextSpan(
                        text: 'Terms od service and Privacy Policy',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        )
                      )
                    ]
                  )
              ),
            ),

            const Spacer(),
            //button section
            appButton(text: 'Continue', callBack: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>const OtpScreen()))),

          ],
        ),
      ),
    );
  }
}
