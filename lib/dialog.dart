import 'package:flutter/material.dart';

class ShowWordDialog extends StatelessWidget {
  final String japanese;
  const ShowWordDialog({
    super.key,
    required this.japanese,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(
        japanese,
        style: const TextStyle(fontSize: 24),
      ),
      actions: [
        GestureDetector(
          child: const Text('完了'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
