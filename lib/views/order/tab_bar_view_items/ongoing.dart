import 'package:flutter/material.dart';

class OngoingScreen extends StatelessWidget {
  const OngoingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/package-delivery.png', height: 90,),
          const Text('\nNo Order Found\n\n',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20
          ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              elevation: 0
            ),
              onPressed: (){},
              child: const Text('Shop Now')
          )
        ],
      ),
    );
  }
}
