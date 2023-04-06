import 'package:flutter/material.dart';

import '../colors.dart';
import '/login/loading_container.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.title,
  });

  // title
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: akataboWhite,
            fontSize: 16,
          ),
        ),

        const SizedBox(height: 8),
        // email text field
        LoadingContainer(
          loadingColor: akataboWhite,
          height: 55,
          borderRadius: BorderRadius.circular(6),
        ),
      ],
    );
  }
}
