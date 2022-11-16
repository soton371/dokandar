import 'package:flutter/material.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/offer.png',height: 90),
            const Text('\nNo offer available..',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20
              ),
            ),
          ],
        ),
      ),
    );
  }
}
