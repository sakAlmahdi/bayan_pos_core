// import 'package:tafisama/objectbox.g.dart';

import 'package:bayan_pos_core/data/model/order/till_value.dart';

class Till {
  int? id;

  String? reference;
  String? shiftId;
  String? userId;
  String? userName;
  String? note;
  String? openDateOn;
  String? openTimeOn;
  bool? isClosed;
  String? closeDateOn;
  String? closeTimeOn;
  double? amount;
  List<TillValue>? tillAmounts = [];

  Till({
    this.id,
    this.shiftId,
    this.userId,
    this.userName,
    this.note,
    this.openDateOn,
    this.openTimeOn,
    this.isClosed,
    this.closeDateOn,
    this.closeTimeOn,
    this.reference,
    this.amount,
    this.tillAmounts,
  });

  Till.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    reference = json['reference'];
    shiftId = json['shiftId'];
    userId = json['userId'];
    userName = json['userName'];
    note = json['note'];
    openDateOn = json['openDateOn'];
    openTimeOn = json['openTimeOn'];
    isClosed = json['isClosed'];
    amount = double.tryParse(json['amount'].toString()) ?? 0.0;
    closeDateOn = json['closeDateOn'];
    closeTimeOn = json['closeTimeOn'];
    if (json['tillAmounts'] != null) {
      json['tillAmounts'].forEach((v) {
        tillAmounts = [];
        tillAmounts!.add(TillValue.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    data['id'] = id;
    data['reference'] = reference;
    data['shiftId'] = shiftId;
    data['userId'] = userId;
    data['userName'] = userName;
    data['note'] = note;
    data['openDateOn'] = openDateOn;
    data['openTimeOn'] = openTimeOn;
    data['isClosed'] = isClosed;
    data['closeDateOn'] = closeDateOn;
    data['closeTimeOn'] = closeTimeOn;
    data['amount'] = amount;
    if (tillAmounts?.isNotEmpty ?? false) {
      data['tillAmounts'] = tillAmounts!.map((e) => e.toJson()).toList();
    }
    return data;
  }

  Till copyWith({
    int? id,
    String? tillId,
    String? shiftId,
    String? userId,
    String? userName,
    String? note,
    String? openDateOn,
    String? openTimeOn,
    bool? isClosed,
    String? closeDateOn,
    String? closeTimeOn,
    String? reference,
    double? amount,
    List<TillValue>? tillAmounts,
    List<int>? byteList,
  }) {
    return Till(
      id: id ?? this.id,
      shiftId: shiftId ?? this.shiftId,
      reference: reference ?? this.reference,
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      note: note ?? this.note,
      openDateOn: openDateOn ?? this.openDateOn,
      openTimeOn: openTimeOn ?? this.openTimeOn,
      isClosed: isClosed ?? this.isClosed,
      closeDateOn: closeDateOn ?? this.closeDateOn,
      closeTimeOn: closeTimeOn ?? this.closeTimeOn,
      amount: amount ?? this.amount,
      tillAmounts: tillAmounts ?? this.tillAmounts,
    );
  }

  static List<Till> fromList(List<dynamic> data) =>
      data.map((e) => Till.fromJson(e)).toList();
}
