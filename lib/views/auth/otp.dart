import 'dart:async';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:dokandar/views/principal.dart';
import 'package:dokandar/widgets/app_appbar.dart';
import 'package:dokandar/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController textEditingController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context:context, title: 'Verification',bottom: false),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('\nVerify your\nphone\nnumber',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28
              ),
            ),

            const Text('Enter your otp code here.\n\n',
              style: TextStyle(
                  fontWeight: FontWeight.w500
              ),
            ),
            PinCodeTextField(
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              cursorColor: Colors.black,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.circle,
                fieldHeight: 60,
                fieldWidth: 60,
                activeFillColor: Colors.white,
                inactiveFillColor: Colors.white,
                selectedFillColor: Colors.white,
                selectedColor: Colors.pinkAccent,
                inactiveColor: Colors.pinkAccent,
                activeColor: Colors.grey,
              ),
              animationDuration: const Duration(milliseconds: 300),
              enableActiveFill: true,
              errorAnimationController: errorController,
              controller: textEditingController,
              onCompleted: (v) {
                //print("Completed");
              },
              onChanged: (value) {
                //print(value);
                setState(() {
                  currentText = value;
                });
              },
              beforeTextPaste: (text) {
                return true;
              }, appContext: context,
            ),

            const Text("Didn't you receive any code? Wait!\n",
            style: TextStyle(fontSize: 15,
            letterSpacing: 1
            ),
            ),

            CircularCountDownTimer(
              duration: 30,
              initialDuration: 0,
              controller: CountDownController(),
              width: 80,
              height: 80,
              ringColor: Colors.grey[300]!,
              ringGradient: null,
              fillColor: Colors.pink[100]!,
              fillGradient: null,
              backgroundColor: Colors.pink[500],
              backgroundGradient: null,
              strokeWidth: 20.0,
              strokeCap: StrokeCap.round,
              textStyle: const TextStyle(
                  fontSize: 33.0, color: Colors.white, fontWeight: FontWeight.bold),
              textFormat: CountdownTextFormat.S,
              isReverse: true,
              isReverseAnimation: true,
              isTimerTextShown: true,
              autoStart: true,
              onStart: () {
                debugPrint('Countdown Started');
              },
              onComplete: () {
                debugPrint('Countdown Ended');
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 8),
        child: appButton(text: 'Verify',callBack: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=> const PrincipalScreen()))),
      ),
    );
  }
}

