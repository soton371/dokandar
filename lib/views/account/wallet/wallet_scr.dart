import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1f1ef),
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: const Color(0xfffffefe),
        centerTitle: false,
        leading: const Icon(Icons.arrow_back_ios_new),
        title: const Text('Wallet'),
        actions: [
          Row(
            children: const [
              CircleAvatar(
                radius: 7,
                backgroundImage: AssetImage('assets/images/bangladesh.png'),
              ),
              Text(' BDT  ',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500
              ),)
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xfffffefe),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))
            ),
            child: Column(
              children: [
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('৳ ',style: TextStyle(
                        fontWeight: FontWeight.w600,
                      fontSize: 17
                    ),),
                    Text('25,654',style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),),
                    Text(' .55',style: TextStyle(
                        fontWeight: FontWeight.w600,
                      fontSize: 17
                    ),)
                  ],
                ),

                Container(
                  margin: const EdgeInsets.only(top: 20,bottom: 40),
                  height: 30,
                  width: 105,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Color(0xffdff077),
                        radius: 6,
                        child: Icon(Icons.add,color: Colors.black,size: 10,),
                      ),
                      Text('  ADD MONEY',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                itemCount: 20,
                  itemBuilder: (_,i)=>ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.network(i%2==0?'https://i.pinimg.com/originals/17/3b/ad/173badf89e723ded42cde4a18cce0232.png':'https://seeklogo.com/images/B/bkash-logo-0C1572FBB4-seeklogo.com.png',height: 20,width: 20,),
                    ),
                    title: Text(i%2==0?'Apple':'Bkash',style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),
                    subtitle: const Text('23 Dec 2022 1:30am',style: TextStyle(fontSize: 8),),
                    trailing: Text(i%2==0?'-160.0':'+2,000.0',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,color:i%2==0?Colors.grey: const Color(
                        0xff8ea402)),),
                  )
              )
          )
        ],
      ),
    );
  }
}
