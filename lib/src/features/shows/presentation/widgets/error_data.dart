import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class ErrorData extends StatelessWidget {
  final String errorMessage;

  const ErrorData(
    this.errorMessage, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Title
        Text(
          errorMessage,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),

        // Spacing
        MaterialSpacing.heightDefault(),

        // Icon
        const Icon(
          Icons.error,
          size: 60,
          color: AppColors.red,
        )
      ],
    );
  }
}
