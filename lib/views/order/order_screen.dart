import 'package:dokandar/views/order/tab_bar_view_items/cancelled.dart';
import 'package:dokandar/views/order/tab_bar_view_items/completed.dart';
import 'package:dokandar/views/order/tab_bar_view_items/ongoing.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> with TickerProviderStateMixin{

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.animateTo(0);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Orders',
          style: TextStyle(
            fontWeight: FontWeight.normal
          ),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          bottom: TabBar(
            controller: tabController,
              labelColor: Colors.black,
              tabs: const [
                Tab(icon: Text('Ongoing'),),
                Tab(icon: Text('Cancelled'),),
                Tab(icon: Text('Completed'),),
              ]
          ),
        ),
        body: TabBarView(
          controller: tabController,
            children: const [
              OngoingScreen(),
              CancelledScreen(),
              CompletedScreen(),
            ]
        )
      ),
    );
  }
}
