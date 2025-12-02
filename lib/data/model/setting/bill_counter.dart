import 'package:bayan_pos_core/data/model/setting/bill_copy_history.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class BillCounter {
  int? id;
  String? dateTimeOpenOn;
  String? dateTimeCloseOn;
  bool? isClosed;
  int? curentCounter;
  String? billPerfex;
  final billCopyHistory = ToMany<BillCopyHistory>();

  BillCounter({
    this.id,
    this.dateTimeOpenOn,
    this.dateTimeCloseOn,
    this.isClosed,
    this.curentCounter,
    this.billPerfex,
  });

  BillCounter.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dateTimeOpenOn = json['DateTimeOpenOn'];
    dateTimeCloseOn = json['DateTimeCloseOn'];
    isClosed = json['isClosed'];
    curentCounter = json['curentCounter'];
    billPerfex = json['billPerfex'];
    if (json['billCopyHistory'] != null) {
      json['billCopyHistory'].forEach((v) {
        billCopyHistory.add(BillCopyHistory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['DateTimeOpenOn'] = dateTimeOpenOn;
    data['DateTimeCloseOn'] = dateTimeCloseOn;
    data['isClosed'] = isClosed;
    data['curentCounter'] = curentCounter;
    data['billPerfex'] = billPerfex;

    data['billCopyHistory'] = billCopyHistory.map((v) => v.toJson()).toList();

    return data;
  }

  BillCounter copyWith({
    int? id,
    String? dateTimeOpenOn,
    String? dateTimeCloseOn,
    bool? isClosed,
    int? curentCounter,
    String? billPerfex,
  }) {
    return BillCounter(
      id: id ?? this.id,
      dateTimeOpenOn: dateTimeOpenOn ?? this.dateTimeOpenOn,
      dateTimeCloseOn: dateTimeCloseOn ?? this.dateTimeCloseOn,
      isClosed: isClosed ?? this.isClosed,
      curentCounter: curentCounter ?? this.curentCounter,
      billPerfex: billPerfex ?? this.billPerfex,
    );
  }
}
