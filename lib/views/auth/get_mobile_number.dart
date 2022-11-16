import 'package:dokandar/views/auth/sign_up.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

class GetMobileNumberScreen extends StatelessWidget {
  const GetMobileNumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/images/shop.png',
              height: 100,
            ),
            const Text(
              'Dokandar',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const Text(
              'Delivering almost',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            const Text(
              'Everything.',
              style: TextStyle(fontSize: 18),
            ),
            Expanded(
              child: Lottie.asset('assets/jsons/delivery_man.json'),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Row(
                children: [
                   const SizedBox(width: 15,),

                  // CountryCodePicker(
                  //   onChanged: print,
                  //   initialSelection: 'BD',
                  //   textStyle: const TextStyle(
                  //       fontWeight: FontWeight.normal,
                  //       color: AppColors.black),
                  //   showFlag: false,
                  //   showFlagDialog: true,
                  //   favorite: const ['BD'],
                  // ),
                  //const SizedBox(width: 15,),
                  const Expanded(
                      child: TextField(
                    keyboardType: TextInputType.phone,
                    maxLength: 11,
                    decoration: InputDecoration(
                        hintText: 'Enter mobile number',
                        counterText: '',
                        border: InputBorder.none,
                        hintStyle: TextStyle(fontWeight: FontWeight.w500)),
                  )),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const SignUpScreen())),
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
