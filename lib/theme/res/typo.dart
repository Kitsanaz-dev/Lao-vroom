import 'package:flutter/material.dart';

abstract class Typo {
  const Typo({
    required this.name,
    required this.regular,
    required this.medium,
    required this.bold,
    required this.extrabold,
  });

  final String name;
  final FontWeight regular;
  final FontWeight medium;
  final FontWeight bold;
  final FontWeight extrabold;
}

class Roboto implements Typo {
  const Roboto();

  @override
  final String name = 'roboto';

  @override
  final FontWeight regular = FontWeight.w400;
  
  @override
  final FontWeight medium = FontWeight.w500;
  
  @override
  final FontWeight bold = FontWeight.w700;
  
  @override
  final FontWeight extrabold = FontWeight.w800;
}

class NotoSansLao implements Typo {
  const NotoSansLao();

  @override
  final String name = 'noto_sans_lao';

  @override
  final FontWeight regular = FontWeight.w400;
  
  @override
  final FontWeight medium = FontWeight.w500;
  
  @override
  final FontWeight bold = FontWeight.w700;
  
  @override
  final FontWeight extrabold = FontWeight.w800;
}