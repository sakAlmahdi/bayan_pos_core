import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:bayan_pos_core/data/enum/payment_method_enum.dart';
import 'package:objectbox/objectbox.dart';

///TODO :REMOVE isStatic,isExternal,additionalFeeInclTax,hasAdditionalFee

@Entity()
class PaymentMethod {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  int? paymentType;
  int? displayOrder;
  bool? isActive;
  bool? isDeleted;
  bool? autoOpenCashDrawer;

  @Transient()
  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;
  PaymentMethods get getPaymentType => convetStringToPaymentMethod(paymentType);

  PaymentMethod({
    this.id,
    this.name,
    this.fName,
    this.paymentType,
    this.displayOrder,
    this.isActive,
    this.isDeleted,
    this.autoOpenCashDrawer,
  });

  PaymentMethod.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    paymentType = int.parse(json['paymentType'].toString());
    displayOrder = json['displayOrder'];
    isActive = json['isActive'];
    isDeleted = json['isDeleted'];
    autoOpenCashDrawer = json['autoOpenCashDrawer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['paymentType'] = paymentType;
    data['displayOrder'] = displayOrder;
    data['isActive'] = isActive;
    data['is_Deleted'] = isDeleted;
    data['autoOpenCashDrawer'] = autoOpenCashDrawer;
    return data;
  }
}
