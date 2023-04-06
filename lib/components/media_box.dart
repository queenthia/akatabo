import 'package:flutter/material.dart';

import '../colors.dart';

class MediaBox extends StatelessWidget {
  const MediaBox({
    super.key,
    required this.icon,
  });

  
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {  },
      child: Container(
        height: 55,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: const Color.fromARGB(255, 26, 25, 25),
        ),
        child: Center(child: Icon(icon,color: akataboWhite,)),
      ),
    );
  }
}
