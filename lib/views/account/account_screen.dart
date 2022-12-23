import 'package:dokandar/configs/app_colors.dart';
import 'package:dokandar/views/account/wallet/wallet_scr.dart';
import 'package:dokandar/widgets/app_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Account'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('\n    Soton Ahmed',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),
            ),
            const Text('\n    +8801610834281\n    soton@gmail.com\n',
            style: TextStyle(
              color: AppColors.grey
            ),
            ),

            const Divider(
              color: AppColors.border,
              thickness: 5,
            ),

            appListTile(
              iconData: Iconsax.location5,
              title: 'Saved Addresses'
            ),
            InkWell(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>const WalletScreen())),
              child: appListTile(
                iconData: Iconsax.wallet5,
                title: 'Wallet'
              ),
            ),
            appListTile(
              iconData: Iconsax.gift5,
              title: 'Rewards'
            ),
            appListTile(
              iconData: Iconsax.money5,
              title: 'Refer n earn'
            ),
            appListTile(
              iconData: Iconsax.note_15,
              title: 'Terms & Conditions'
            ),
            appListTile(
              iconData: Iconsax.support5,
              title: 'Support'
            ),
            appListTile(
              iconData: Iconsax.info_circle5,
              title: 'About us'
            ),
            appListTile(
              iconData: Iconsax.setting_45,
              title: 'Settings'
            ),
            appListTile(
              iconData: Iconsax.logout5,
              title: 'Logout'
            ),
          ],
        ),
      )
    );
  }
}
