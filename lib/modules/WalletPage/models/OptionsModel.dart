// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Options {
  final IconData icon;
  final String title;
  final bool active;
  Options({
    required this.icon,
    required this.title,
    required this.active,
  });

  factory Options.fromJson(Map<String, dynamic> json) {
    return Options(
      icon: json['icon'],
      title: json['title'],
      active: json['active'],
    );
  }

  Map toJson() {
    return {
      'icon': icon,
      'title': title,
      'active': active,
    };
  }
}
