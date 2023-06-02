import 'dart:collection';

import 'package:barback/list_items/queue_list_item.dart';
import 'package:barback/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/Order.dart';

class BarQueue extends StatefulWidget {
  const BarQueue({Key? key}) : super(key: key);

  @override
  BarQueueState createState() => BarQueueState();
}

class BarQueueState extends State<BarQueue> {
  late Queue<Order> orders;

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    orders = appState.currentBartender.queue;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Orders: ${orders.length}'),
          ),
          Expanded(
            child: ListView(
              children: orders.map((Order order) {
                return QueueListItem(order: order);
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}