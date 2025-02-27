import 'package:flutter/material.dart';
import 'package:flutter_anb/styles.dart';

class CommonFormField extends StatelessWidget {
  final prefiexText;
  final hintText;

  const CommonFormField(
      {required this.prefiexText, required this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      TextFormField(
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 30, left: 20, bottom: 10),
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black, width: 2)),
        ),
      ),
      Positioned(
          top: 8,
          left: 20,
          child: Text(
            prefiexText,
            style: overLine(),
          ))
    ]);
  }
}
