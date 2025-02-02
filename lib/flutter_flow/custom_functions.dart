import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String returnWithComission(String price) {
  // return price - 20%
  double originalPrice = double.parse(price);
  double comission = originalPrice * 0.20;
  double finalPrice = originalPrice - comission;
  return finalPrice.toStringAsFixed(0);
}

String sumNumbers(
  String ballance,
  String numvalue,
) {
  // return sum of numbers
  int ballanceint = int.parse(ballance);
  int numvalueint = int.parse(numvalue);
  int sum = ballanceint + numvalueint;
  return sum.toString();
}

String minusNumbers(
  String ballance,
  String numvalue,
) {
  // return sum of numbers
  int ballanceint = int.parse(ballance);
  int numvalueint = int.parse(numvalue);
  int sum = ballanceint - numvalueint;
  return sum.toString();
}

bool isValueValid(
  String ballance,
  String numvalue,
) {
  try {
    int balanceInt = int.parse(ballance);
    int numvalueInt = int.parse(numvalue);

    if (balanceInt < 0 || numvalueInt < 0) return false;

    return numvalueInt < balanceInt;
  } catch (e) {
    return false; // Возвращаем false в случае ошибки
  }
}

String textToImage(String text) {
  return text;
}

List<UsersRecord>? searcUsers(
  String? text,
  List<UsersRecord>? list,
) {
  // return users which display_name contains text
  if (text == null || text.isEmpty || list == null || list.isEmpty) {
    return null;
  }

  List<UsersRecord> result = list
      .where(
          (user) => user.displayName.toLowerCase().contains(text.toLowerCase()))
      .toList();
  return result;
}
