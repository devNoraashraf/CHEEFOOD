import 'package:flutter/material.dart';

class OptionsItem extends StatelessWidget {
  const OptionsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(Icons.fastfood, color: Colors.orange),
        ),
        const SizedBox(height: 8),
        const Text(
          'Fast Food',
          style: TextStyle(fontSize: 12, color: Colors.black),
        ),
      ],
    );
  }
}
