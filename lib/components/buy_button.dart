import 'package:flutter/material.dart';

import '../colors.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  // button text
  final String text;

  // on tap
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        color: akataboColor,
        borderRadius: BorderRadius.circular(6),
        
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: akataboWhite,
          ),
        ),
      ),
    );
  }
}
