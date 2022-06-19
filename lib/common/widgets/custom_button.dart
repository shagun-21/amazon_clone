import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const CustomButton({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:ontap,
    child: Text(text),
    style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50)
    ),);
  }
}