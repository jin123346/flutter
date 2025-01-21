import 'package:flutter/material.dart';

class BookCartPage extends StatelessWidget {
  final Function(String) onToggleSaved;
  final List<String> mySelectedBooked;
  const BookCartPage(
      {required this.onToggleSaved, required this.mySelectedBooked, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: mySelectedBooked.map((cart) {
      return ListTile(
        leading: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: Theme.of(context).secondaryHeaderColor,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Theme.of(context).primaryColor),
          ),
        ),
        title: Text(
          cart,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        trailing: IconButton(
            onPressed: () {
              onToggleSaved(cart);
            },
            icon: Icon(
              Icons.remove_circle,
              color: Theme.of(context).primaryColor,
            )),
      );
    }).toList());
  }
}
