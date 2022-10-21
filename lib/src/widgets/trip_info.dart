import 'package:flutter/material.dart';

// trip status enum.
enum TripStatus {
  pending,
  accepted,
  rejected,
  started,
  finished,
  canceled,
}

// trip status colors.
const List<Color> kTripStatusColors = [
  Color(0xFFFBB03B),
  Color(0xFFA67C52),
  Color(0xFFED1C24),
  Color(0xFF29ABE2),
  Color(0xFF39B54A),
  Color(0xFFFF00FF),
];
