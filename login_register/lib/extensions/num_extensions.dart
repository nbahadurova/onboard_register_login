import 'package:flutter/material.dart';

extension Numextensions on num {
  SizedBox get h =>  SizedBox(height: toDouble(),);
  SizedBox get w =>  SizedBox(width: toDouble(),);
}
