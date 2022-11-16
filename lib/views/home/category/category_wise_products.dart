import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CategoryWiseProduct extends StatelessWidget {
  const CategoryWiseProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
          icon: const Icon(Iconsax.arrow_left),
        ),
        titleSpacing: 0,
        title: ListTile(
          title: const Text('Store Name'),
          subtitle: Row(
            children: const [
              Icon(Iconsax.location5,size: 12,),
              Text(' 22.04 km |Grocery Items',
              style: TextStyle(
                fontSize: 12
              ),
              )
            ],
          ),
        ),
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
            preferredSize: const Size(double.infinity, 40),
            child: Container(
              height: 30,
              alignment: Alignment.topCenter,
              width: double.infinity,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.pinkAccent,
                  ),),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: const Text('Grocery Items',
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 16
                ),
              ),
            )
        ),
      ),
      body: const Text('data')
    );
  }
}


