import 'package:bayan_pos_core/data/entity/drift_db.dart';
import 'package:bayan_pos_core/data/enum/drawer_opertion_enum.dart';

class DrawerOperation {
  DateTime? dateWork;
  late String referance;
  int? type;
  double? amount;
  String? resaon;
  String? note;
  String? deviceId;
  String? userId;
  String? tillId;
  String? shiftId;
  String? currencyId;
  String? currencyCode;
  DateTime? createdAt;

  DrawerOpertionEnum get getType => convertKeyToDrawerOpertionEnum(type);

  DrawerOperation({
    this.dateWork,
    required this.referance,
    this.type,
    this.amount,
    this.resaon,
    this.note,
    this.deviceId,
    this.userId,
    this.tillId,
    this.shiftId,
    this.currencyId,
    this.currencyCode,
    this.createdAt,
  });

  DrawerOperation.fromJson(Map<String, dynamic> json) {
    if (json['dateWork'] != null) {
      dateWork = DateTime.fromMillisecondsSinceEpoch(json['dateWork']);
    }
    referance = json['referance'];
    type = json['type'];
    amount = json['amount']?.toDouble();
    resaon = json['resaon'];
    note = json['note'];
    deviceId = json['deviceId'];
    userId = json['userId'];
    tillId = json['tillId'];
    shiftId = json['shiftId'];
    currencyId = json['currencyId'];
    currencyCode = json['currencyCode'];
    if (json['createdAt'] != null && json['createdAt'] is int) {
      createdAt = DateTime.fromMillisecondsSinceEpoch(json['createdAt']);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dateWork'] = dateWork?.millisecondsSinceEpoch;
    data['referance'] = referance;
    data['type'] = type;
    data['amount'] = amount;
    data['resaon'] = resaon;
    data['note'] = note;
    data['deviceId'] = deviceId;
    data['userId'] = userId;
    data['tillId'] = tillId;
    data['shiftId'] = shiftId;
    data['currencyId'] = currencyId;
    data['currencyCode'] = currencyCode;
    data['createdAt'] = createdAt?.millisecondsSinceEpoch;
    return data;
  }

  DrawerOperationEntityData get toDrawerOperationData => DrawerOperationEntityData(
        referance: referance,
        dateWork: dateWork ?? DateTime.now(),
        type: type,
        amount: amount,
        resaon: resaon,
        note: note,
        deviceId: deviceId,
        userId: userId,
        tillId: tillId,
        shiftId: shiftId,
        currencyId: currencyId,
        currencyCode: currencyCode,
        createdAt: createdAt ?? DateTime.now(),
      );
}
