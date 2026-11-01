import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showMessage(BuildContext context, String platform) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Kamu memilih $platform'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          tooltip: 'Instagram',
          onPressed: () => _showMessage(context, 'Instagram'),
          icon: const Icon(
            Icons.camera_alt,
            color: Colors.purple,
            size: 32,
          ),
        ),
        IconButton(
          tooltip: 'LinkedIn',
          onPressed: () => _showMessage(context, 'LinkedIn'),
          icon: const Icon(
            Icons.work,
            color: Colors.blue,
            size: 32,
          ),
        ),
        IconButton(
          tooltip: 'GitHub',
          onPressed: () => _showMessage(context, 'GitHub'),
          icon: const Icon(
            Icons.code,
            color: Colors.black87,
            size: 32,
          ),
        ),
      ],
    );
  }
}