import 'package:flutter_guid/flutter_guid.dart';

class TimeEventForPriceViewDto {
  Guid id;
  String name;
  DateTime startDate;
  DateTime endDate;
  DateTime? startTime;
  DateTime? endTime;

  TimeEventForPriceViewDto({
    required this.id,
    required this.name,
    required this.startDate,
    required this.endDate,
    this.startTime,
    this.endTime,
  });

  // fromJson
  factory TimeEventForPriceViewDto.fromJson(Map<String, dynamic> json) {
    return TimeEventForPriceViewDto(
      id: Guid(json['id']),
      name: json['name'],
      startDate: DateTime.parse(json['start_date']),
      endDate: DateTime.parse(json['end_date']),
      startTime: json['start_time'] != null
          ? DateTime.tryParse(json['start_time'])
          : null,
      endTime:
          json['end_time'] != null ? DateTime.tryParse(json['end_time']) : null,
    );
  }

  // toJson
  Map<String, dynamic> toJson() {
    return {
      'id': id.toString(),
      'name': name,
      'start_date': startDate.toIso8601String(),
      'end_date': endDate.toIso8601String(),
      'start_time': startTime,
      'end_time': endTime,
    };
  }

  // copyWith
  TimeEventForPriceViewDto copyWith({
    Guid? id,
    String? name,
    DateTime? startDate,
    DateTime? endDate,
    DateTime? startTime,
    DateTime? endTime,
  }) {
    return TimeEventForPriceViewDto(
      id: id ?? this.id,
      name: name ?? this.name,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
    );
  }
}
