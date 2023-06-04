import 'guest.dart';
import 'order.dart';

class BarTable {
  final int tableNumber;
  final List<Order> orders;
  final List<Guest> guests;

  BarTable(
      {required this.tableNumber, required this.guests, required this.orders});
}
