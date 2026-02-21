
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const AppCard({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(title: Text(title), onTap: onTap),
    );
  }
}
