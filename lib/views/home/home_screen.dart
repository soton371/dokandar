import 'package:dokandar/configs/app_colors.dart';
import 'package:dokandar/views/home/service_list.dart';
import 'package:dokandar/widgets/app_grid_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.location_on,color: AppColors.pink,),
        titleSpacing: 0,
        title: const Text('No Location Selected'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: const TextSpan(
                  text: '\n   We Deliver',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.black,
                    fontWeight: FontWeight.bold
                  ),
                  children: [
                    TextSpan(
                      text: ' everything you need\n',
                      style: TextStyle(
                          fontSize: 18,
                        color: AppColors.black,
                        fontWeight: FontWeight.normal
                      ),
                    )
                  ]
                )
            ),

            GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0
              ),
            children: [
              InkWell(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>ServiceListScreen(title: 'Grocery',))),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: AppColors.border,width: 0.5),
                      right: BorderSide(color: AppColors.border,width: 0.5),
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/groceries-store.png',height: 90,width: 90,),
                      const Text('\nGrocery',
                      style: TextStyle(
                        fontWeight: FontWeight.w500
                      ),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>ServiceListScreen(title: 'Restaurant',))),
                  child: appGridItem(image: const AssetImage('assets/images/restaurant.png'), title: 'Restaurant')),
              InkWell(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>ServiceListScreen(title: 'Pharmacy',))),
                  child: appGridItem(image: const AssetImage('assets/images/pharmacy.png'), title: 'Pharmacy')),
              InkWell(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>ServiceListScreen(title: 'Library',))),
                  child: appGridItem(image: const AssetImage('assets/images/book-shop.png'), title: 'Library')),
              InkWell(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>ServiceListScreen(title: 'Laundry',))),
                  child: appGridItem(image: const AssetImage('assets/images/laundry-shop.png'), title: 'Laundry Services')),
              InkWell(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>ServiceListScreen(title: 'Beyond Boundaries',))),
                  child: appGridItem(image: const AssetImage('assets/images/stall.png'), title: 'Beyond Boundaries')),
              InkWell(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>ServiceListScreen(title: 'Broadband Services',))),
                  child: appGridItem(image: const AssetImage('assets/images/wifi-router.png'), title: 'Broadband Services')),
            ],
            )
          ],
        ),
      )
    );
  }
}


