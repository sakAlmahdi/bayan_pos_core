import 'package:flutter/material.dart';

class ErrorWithSolution extends Error {
  List<SolutionError>? solution;
  List<SolutionError>? info;
  String massage;
  int code;
  ErrorWithSolution({
    required this.massage,
    required this.code,
    this.solution,
    this.info,
  });
}

class SolutionError {
  late String label;
  Widget? icon;
  SolutionError({required this.label, this.icon});
}
