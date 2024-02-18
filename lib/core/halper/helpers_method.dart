import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/date_symbol_data_local.dart';

mixin BaseHelpersMethods {
  static bool get isSecoundaryLang => Get.locale == Locale('ar');
  static DateTime compainDateAndTime(
      {required String date, required String time}) {
    DateTime d = DateTime.parse(date);
    String dat = "${d.year}-${d.month}-${d.day} $time";
    DateTime tempDate = intl.DateFormat("yyyy-MM-dd hh:mm:ss").parse(dat);
    return tempDate;
  }

  static String createRefId() {
    initializeDateFormatting();
    String id = intl.DateFormat('yyMMddHHmmss', 'en').format(
      DateTime.now(),
    );
    return id + getRandomString(2);
  }

  static String getRandomString(int length) {
    const _chars = '1234567890';
    Random _rnd = Random();
    return String.fromCharCodes(Iterable.generate(
        length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
  }
}
