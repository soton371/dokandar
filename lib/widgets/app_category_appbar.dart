import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

appCategoryAppBar(context,storeName){
  return AppBar(
    leading: IconButton(
      onPressed: ()=>Navigator.pop(context),
      icon: const Icon(Iconsax.arrow_left),
    ),
    title: Text(storeName),
    actions: [
      IconButton(
        onPressed: (){},
        icon: const Icon(Iconsax.search_normal_1),
      ),
      IconButton(
        onPressed: (){},
        icon: const Icon(Iconsax.shopping_bag),
      ),
    ],
    bottom: PreferredSize(
        preferredSize: const Size(double.infinity, 50),
        child: InkWell(
            onTap: (){},
            child: Container(
              height: 50,
              color: Colors.pinkAccent,
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('  Deal/Offer Zone',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,)
                ],
              ),
            )
        )
    ),
  );
}