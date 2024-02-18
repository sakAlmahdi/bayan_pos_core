import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:bayan_pos_core/data/enum/days_enum.dart';
import 'package:bayan_pos_core/data/enum/event_action_enum.dart';
import 'package:bayan_pos_core/data/enum/order_type.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class TimeEvent {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  int? timeEventType;
  double? timeEventValue;
  String? startDate;
  String? endDate;
  String? startTime;
  String? endTime;
  List<int>? days;
  List<int>? orderTypes;
  List<String>? products;
  List<String>? customers;
  List<String>? departments;
  List<String>? categories;
  int priority = 0;

  @Transient()
  EventAction get getEventAction => converStringToEventAction(timeEventType);

  @Transient()
  List<OrderType> get getOrderTypes =>
      orderTypes
          ?.map((e) => convertStringToOrderType(e) ?? OrderType.dineIn)
          .toList() ??
      [];

  @Transient()
  List<Day> get getOrderDays =>
      days?.map((e) => convertStringToDay(e)).toList() ?? [];
  @Transient()
  DateTime get getStratDateAndTime =>
      BaseHelpersMethods.compainDateAndTime(date: startDate!, time: startTime!);
  @Transient()
  DateTime get getEndDateAndTime =>
      BaseHelpersMethods.compainDateAndTime(date: endDate!, time: endTime!);
  @Transient()
  String? get getName => BaseHelpersMethods.isSecoundaryLang ? name : fName;

  TimeEvent(
      {this.id,
      this.name,
      this.fName,
      this.timeEventType,
      this.timeEventValue,
      this.startDate,
      this.endDate,
      this.startTime,
      this.endTime,
      this.days,
      this.orderTypes,
      this.products});

  TimeEvent.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    timeEventType = json['timeEventType'];
    timeEventValue = double.tryParse(json['timeEventValue'].toString()) ?? 0.0;
    startDate = json['start_Date'];
    endDate = json['end_Date'];
    startTime = json['start_Time'];
    endTime = json['end_Time'];
    priority = json['priority'];
    if (json['days'] != null) {
      days = <int>[];
      json['days'].forEach((v) {
        days!.add(v);
      });
    }
    if (json['orderTypes'] != null) {
      orderTypes = <int>[];
      json['orderTypes'].forEach((v) {
        orderTypes!.add(v);
      });
    }
    if (json['products'] != null) {
      products = <String>[];
      json['products'].forEach((v) {
        products!.add(v.toString().toLowerCase());
      });
    }
    if (json['departments'] != null) {
      departments = <String>[];
      json['departments'].forEach((v) {
        departments!.add(v.toString().toLowerCase());
      });
    }
    if (json['categoeries'] != null) {
      categories = <String>[];
      json['categoeries'].forEach((v) {
        categories!.add(v.toString().toLowerCase());
      });
    }
    if (json['customers'] != null) {
      customers = <String>[];
      json['customers'].forEach((v) {
        customers!.add(v.toString().toLowerCase());
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['timeEventType'] = timeEventType;
    data['timeEventValue'] = timeEventValue;
    data['start_Date'] = startDate;
    data['end_Date'] = endDate;
    data['start_Time'] = startTime;
    data['end_Time'] = endTime;
    data['priority'] = priority;
    if (days != null) {
      data['days'] = days!.map((v) => v).toList();
    }
    if (orderTypes != null) {
      data['orderTypes'] = orderTypes!.map((v) => v).toList();
    }
    if (products != null) {
      data['products'] = products!.map((v) => v).toList();
    }
    if (customers != null) {
      data['customers'] = products!.map((v) => v).toList();
    }
    return data;
  }
}
