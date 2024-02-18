import 'package:objectbox/objectbox.dart';

@Entity()
class FreeOption {
  @Id()
  int? idSeq;
  String? optionId;
  double? freeQuantity;

  FreeOption({this.optionId, this.freeQuantity});

  FreeOption.fromJson(Map<String, dynamic> json) {
    optionId = json['optionId'];
    freeQuantity = double.tryParse(json['freeQuantity'].toString()) ?? 0.0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['optionId'] = optionId;
    data['freeQuantity'] = freeQuantity;
    return data;
  }
}
