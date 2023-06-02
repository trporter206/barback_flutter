

import 'package:flutter/material.dart';

import '../models/Order.dart';

class QueueListItem extends StatelessWidget {
  final Order order;

  const QueueListItem({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 75,
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Order ${order.id}'),
                    Text('${order.cocktails} Cocktails'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
