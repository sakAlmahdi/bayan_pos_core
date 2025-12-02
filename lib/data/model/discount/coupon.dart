import 'package:bayan_pos_core/data/enum/coupon_level_enum.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Coupon {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? couponCode;
  int? useCountForAll;
  int? useCountForOne;
  int? maximumUses;
  String? startDate;
  String? endDate;
  String? startTime;
  String? endTime;
  String? discountId;
  List<int>? days;
  int? couponLevel;
  int numberOFProducts = 1;
  @Transient()
  CouponLevel? get getCouponLevel => convetStringToCouponLevel(couponLevel);

  Coupon(
      {this.id,
      this.couponCode,
      this.useCountForAll,
      this.useCountForOne,
      this.maximumUses,
      this.startDate,
      this.endDate,
      this.startTime,
      this.endTime,
      this.discountId,
      this.days});

  Coupon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    couponCode = json['coupon_Code'];
    useCountForAll = json['useCountForAll'];
    useCountForOne = json['useCountForOne'];
    maximumUses = json['maximum_Uses'];
    startDate = json['start_Date'];
    endDate = json['end_Date'];
    startTime = json['start_Time'];
    endTime = json['end_Time'];
    discountId = json['discountId'];
    numberOFProducts = json['numberOFProducts'];
    couponLevel = json['couponLevel'];

    if (json['days'] != null) {
      days = <int>[];
      json['days'].forEach((v) {
        days!.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['coupon_Code'] = couponCode;
    data['useCountForAll'] = useCountForAll;
    data['useCountForOne'] = useCountForOne;
    data['maximum_Uses'] = maximumUses;
    data['start_Date'] = startDate;
    data['end_Date'] = endDate;
    data['start_Time'] = startTime;
    data['end_Time'] = endTime;
    data['discountId'] = discountId;
    data['numberOFProducts'] = numberOFProducts;
    data['couponLevel'] = couponLevel;
    if (days != null) {
      data['days'] = days!.map((v) => v).toList();
    }
    return data;
  }
}
