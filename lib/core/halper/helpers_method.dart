import 'dart:math';

import 'package:bayan_pos_core/core/extensions/base_num_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/date_symbol_data_local.dart';

mixin BaseHelpersMethods {
  static bool isPrimaryLang = false;
  static DateTime compainDateAndTime(
      {required String date, required String time}) {
    DateTime d = DateTime.parse(date);
    String dat = "${d.year}-${d.month}-${d.day} $time";
    DateTime tempDate = intl.DateFormat("yyyy-MM-dd HH:mm:ss").parse(dat);
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

// Busses Model 
 /// user 
    // - p :"en",
    // -s : "ar" 

//printer template 


