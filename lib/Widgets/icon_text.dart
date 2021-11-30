import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconText({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.yellow,
        ),
        SizedBox(width: 10,),
        Text(
          text,
          style: TextStyle(fontSize: 12, color: Colors.grey),
        )
      ],
    );
  }
}
