// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Emoji extends StatelessWidget {
  final String emoji;

  const Emoji({
    Key? key,
    required this.emoji,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Center(
        child: Text(
          emoji,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
