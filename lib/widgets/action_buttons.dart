import 'package:flutter/material.dart';
import '../screens/about_screen.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            flex: 1,
            child: ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Tombol Edit diklik'),
                  ),
                );
              },
              icon: const Icon(Icons.edit),
              label: const Text('Edit'),
            ),
          ),
          const SizedBox(width: 8),
          Flexible(
            flex: 1,
            child: ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Tombol Bagikan diklik'),
                  ),
                );
              },
              icon: const Icon(Icons.share),
              label: const Text('Bagikan'),
            ),
          ),
          const SizedBox(width: 8),
          Flexible(
            flex: 1,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutScreen(),
                  ),
                );
              },
              child: const Text('Tentang'),
            ),
          ),
        ],
      ),
    );
  }
}