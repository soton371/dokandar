import 'package:cached_network_image/cached_network_image.dart';
import 'package:dokandar/configs/app_colors.dart';
import 'package:dokandar/views/home/category/category.dart';
import 'package:dokandar/widgets/app_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ServiceListScreen extends StatelessWidget {
  // const ServiceListScreen({Key? key}) : super(key: key);
  String title;
  ServiceListScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context: context,title: title,actionIcon: Iconsax.shopping_bag,bottom: true,serviceName: title),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('\n  5 $title Found',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.grey
            ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_,i)=>Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>const CategoryScreen())),
                    contentPadding: const EdgeInsets.all(8),
                    leading: CachedNetworkImage(
                      imageUrl: "https://picsum.photos/100",
                      placeholder: (context, url) => const CupertinoActivityIndicator(),
                      errorWidget: (context, url, error) => const Icon(Iconsax.image),
                    ),
                    title: Text('$title Name'),
                    subtitle: Column(
                      children: [
                        const SizedBox(height: 5,),
                        Row(
                          children: const [
                            Icon(Iconsax.location5,size: 16,),
                            SizedBox(width: 5,),
                            Expanded(child: Text('5.02km Niketon, Dhaka-1213')),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: const [
                            Icon(Iconsax.clock,size: 16,),
                            SizedBox(width: 5,),
                            Expanded(child: Text('20 mins')),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
            )
          ],
        ),
      )
    );
  }
}
