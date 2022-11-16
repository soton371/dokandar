import 'package:dokandar/configs/app_colors.dart';
import 'package:flutter/material.dart';

Widget appGridItem({image,required String title}){
  return Container(
    decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.border,width: 0.5),
          right: BorderSide(color: AppColors.border,width: 0.5),
        )
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: image,height: 100,width: 100,),
        Text('\n$title',
          style: const TextStyle(
              fontWeight: FontWeight.w500
          ),
        )
      ],
    ),
  );
}