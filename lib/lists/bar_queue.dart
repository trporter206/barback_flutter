import 'dart:collection';

import 'package:barback/list_items/queue_list_item.dart';
import 'package:barback/main.dart';
import 'package:barback/models/guest.dart';
import 'package:barback/models/table.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/order.dart';

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
    var g0 = Guest(id: "01");
    var t0 = BarTable(tableNumber: 1, guests: [], orders: []);
    var o0 = Order(id: "o0", cocktails: [], guest: g0, barTable: t0);
    orders.add(o0);

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
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: QueueListItem(order: order),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
