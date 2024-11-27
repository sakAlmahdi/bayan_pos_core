import 'package:objectbox/objectbox.dart';

@Entity()
class TaxTypesExempt {
  @Id()
  int? idSeq;
  String? id;
  String? startDate;
  String? endDate;

  TaxTypesExempt({this.id, this.startDate, this.endDate});

  TaxTypesExempt.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    startDate = json['startDate'];
    endDate = json['endDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['startDate'] = startDate;
    data['endDate'] = endDate;
    return data;
  }
}
