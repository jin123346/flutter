import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final FormFieldSetter<String>? onSaved;
  const CustomTextFormField(this.label, this.onSaved, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: label == 'Password',
      keyboardType: label == 'E-mail' ? TextInputType.emailAddress : null,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$label 을 입력하세요.';
        }
        return null;
      },
      onSaved: onSaved,
    );
  }
}
