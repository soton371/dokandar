import 'package:flutter/material.dart';

Widget appButton({text, callBack}){
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 100)
      ),
      onPressed: callBack,
      child: const Text('Continue',
        style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 18
        ),
      )
  );
}