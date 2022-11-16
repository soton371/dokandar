import 'package:dokandar/configs/app_colors.dart';
import 'package:flutter/material.dart';

Widget appListTile({IconData? iconData, String? title}){
  return ListTile(
    leading: Icon(iconData,color: AppColors.iconColor,),
    title: Text(title!,
      style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500
      ),
    ),
  );
}