 import 'package:dokandar/configs/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

appAppBar({context,title,actionIcon,bottom,serviceName}){
  return AppBar(
    leading: IconButton(
        onPressed: ()=>Navigator.pop(context),
        icon: const Icon(Iconsax.arrow_left)
    ),
    title: Text(title),
    actions: [
      IconButton(
          onPressed: (){},
          icon: Icon(actionIcon)
      )
    ],
    bottom:bottom? PreferredSize(
        preferredSize: const Size(double.infinity, 50),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search $serviceName...',
              fillColor: AppColors.fillColor,
              filled: true,
              contentPadding: EdgeInsets.zero,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                gapPadding: 0,
                borderSide: BorderSide.none
              ),
              prefixIcon: const Icon(Iconsax.search_normal_1),
            ),
          ),
        )
    ):null,
  );
}