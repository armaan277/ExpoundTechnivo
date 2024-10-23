import 'package:flutter/material.dart';

class CustomButton1 extends StatelessWidget {
  final String title;
  const CustomButton1({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: title == 'New' ? Color(0xffFFE9D2) : Color(0xffDBDBDB),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14.0,
          vertical: 8,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: title == "New" ? Color(0xffF98900) : Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
