import 'package:flutter/material.dart';

class ListTileItems {
  final IconData icon;
  final String title;

  ListTileItems({
    required this.icon,
    required this.title
  });

  IconData? operator [](int other) {}
}