import 'package:flutter/material.dart';

Widget appTextFormField({hintText, keyboardType}){
  return TextFormField(
    keyboardType: keyboardType,
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(
        fontWeight: FontWeight.w500,
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
              color: Colors.grey
          )
      ),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
              color: Colors.grey
          )
      ),
    ),
  );
}