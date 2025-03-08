import 'package:objectbox/objectbox.dart';

@Entity()
class Shift {
  int? id;
  String? shiftId;
  String? reference;
  String? userId;
  String? userName;
  String? branchName;
  String? clockedInDateAt;
  String? clockedInTimeAt;
  String? clockedOutDateAt;
  String? clockedOutTimeAt;
  bool? isClockedOut;
  bool? isSync;
  bool? isExist;

  Shift({
    this.id,
    this.reference,
    this.shiftId,
    this.userId,
    this.userName,
    this.branchName,
    this.clockedInDateAt,
    this.clockedInTimeAt,
    this.clockedOutDateAt,
    this.clockedOutTimeAt,
    this.isClockedOut,
    this.isSync = false,
    this.isExist,
  });

  Shift.fromJson(Map<String, dynamic> json) {
    shiftId = json['id'].toString();
    userId = json['userId'];
    userName = json['userName'];
    reference = json['reference'];
    branchName = json['branchName'];
    clockedInDateAt = json['clockedInDateAt'];
    clockedInTimeAt = json['clockedInTimeAt'];
    clockedOutDateAt = json['clockedOutDateAt'];
    clockedOutTimeAt = json['clockedOutTimeAt'];
    isClockedOut = json['isClockedOut'];
    isSync = json['isSync'];
    isExist = json['isExist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['shiftId'] = shiftId;
    data['userId'] = userId;
    data['reference'] = reference;
    data['userName'] = userName;
    data['branchName'] = branchName;
    data['clockedInDateAt'] = clockedInDateAt;
    data['clockedInTimeAt'] = clockedInTimeAt;
    data['clockedOutDateAt'] = clockedOutDateAt;
    data['clockedOutTimeAt'] = clockedOutTimeAt;
    data['isClockedOut'] = isClockedOut;
    data['isSync'] = isSync;
    data['isExist'] = isExist;
    return data;
  }

  Shift copyWith({
    int? id,
    String? shiftId,
    String? reference,
    String? userId,
    String? userName,
    String? branchName,
    String? clockedInDateAt,
    String? clockedInTimeAt,
    String? clockedOutDateAt,
    String? clockedOutTimeAt,
    bool? isClockedOut,
    bool? isSync,
    bool? isExist,
  }) {
    return Shift(
      id: id ?? this.id,
      shiftId: shiftId ?? this.shiftId,
      reference: reference ?? this.reference,
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      branchName: branchName ?? this.branchName,
      clockedInDateAt: clockedInDateAt ?? this.clockedInDateAt,
      clockedInTimeAt: clockedInTimeAt ?? this.clockedInTimeAt,
      clockedOutDateAt: clockedOutDateAt ?? this.clockedOutDateAt,
      clockedOutTimeAt: clockedOutTimeAt ?? this.clockedOutTimeAt,
      isClockedOut: isClockedOut ?? this.isClockedOut,
      isSync: isSync ?? this.isSync,
      isExist: isExist ?? this.isExist,
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }

  static List<Shift> fromList(List<dynamic> data) =>
      data.map((e) => Shift.fromJson(e)).toList();
}
