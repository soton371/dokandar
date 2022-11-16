import 'package:dokandar/views/home/category/category_wise_products.dart';
import 'package:dokandar/widgets/app_category_appbar.dart';
import 'package:dokandar/widgets/app_grid_item.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appCategoryAppBar(context, 'Store Name'),
      body: GridView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0
          ),
          itemCount: 5,
          itemBuilder: (_,i){
            return InkWell(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>const CategoryWiseProduct())),
                child: appGridItem(image: const NetworkImage('https://picsum.photos/100'), title: 'Category Name'));
          }
      )
    );
  }
}
