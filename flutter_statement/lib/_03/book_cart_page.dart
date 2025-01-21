import 'package:flutter/material.dart';
import 'package:flutter_statement/_03/inherited_parent.dart';

class BookCartPage extends StatelessWidget {
  const BookCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    InheritedParent inheritedParent = context
        .dependOnInheritedWidgetOfExactType<InheritedParent>()!; //null assert

    List<String> mySelectedBooked = inheritedParent.state;

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
              inheritedParent.onPressed(cart);
            },
            icon: Icon(
              Icons.remove_circle,
              color: Theme.of(context).primaryColor,
            )),
      );
    }).toList());
  }
}
