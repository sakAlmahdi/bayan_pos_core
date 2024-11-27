import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:bayan_pos_core/data/enum/to_account_enum.dart';
import 'package:bayan_pos_core/data/model/customer/adderss.dart';
import 'package:bayan_pos_core/data/model/customer/tax_types_exempt.dart';

import 'package:objectbox/objectbox.dart';

@Entity()
class Customer {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  String? mobile;
  String? email;
  double? debitLimit;
  double? balance;
  String? customerTypeId;
  String? paymentMethodId;
  String? currencyId;
  String? taxNumber;
  String? taxRegisterationName;
  bool? isHouseAccountEnabled;
  bool? isLoyaltyProgramEnabled;
  bool? inBlackList;
  String? blackListNote;
  String? priceListId;
  String? imageUrl;
  bool? taxable;
  String? deviceCreatedOn;
  String? deviceCreatedBy;
  String? crNo;
  bool? isTaxExempt;

  final taxTypesExempt = ToMany<TaxTypesExempt>();

  final addersses = ToMany<Address>();
  final houseAccountTranscations = ToMany<Transaction>();

  @Transient()
  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;

  Customer({
    this.id,
    this.name,
    this.fName,
    this.mobile,
    this.email,
    this.debitLimit,
    this.balance,
    this.paymentMethodId,
    this.currencyId,
    this.taxNumber,
    this.taxRegisterationName,
    this.inBlackList,
    this.blackListNote,
    this.priceListId,
    this.taxable,
    this.isHouseAccountEnabled,
    this.isLoyaltyProgramEnabled,
    this.deviceCreatedOn,
    this.deviceCreatedBy,
    this.customerTypeId,
    this.imageUrl,
    this.crNo,
    this.isTaxExempt,
  });

  Customer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    mobile = json['mobile'];
    email = json['email'];
    debitLimit = double.tryParse(json['debit_Limit'].toString()) ?? 0.0;
    balance = double.tryParse(json['balance'].toString()) ?? 0.0;
    customerTypeId = json['customerTypeId'];
    paymentMethodId = json['paymentMethodId'];
    currencyId = json['currencyId'];
    taxNumber = json['taxNumber'];
    taxRegisterationName = json['taxRegisterationName'];
    inBlackList = json['inBlackList'];
    blackListNote = json['blackListNote'];
    isHouseAccountEnabled = json['isHouseAccountEnabled'];
    isLoyaltyProgramEnabled = json['isLoyaltyProgramEnabled'];
    isTaxExempt = json['is_TaxExempt'];
    if (json['addresses'] != null) {
      json['addresses'].forEach((v) {
        addersses.add(Address.fromJson(v));
      });
    }

    if (json['transactions'] != null) {
      json['transactions'].forEach((v) {
        houseAccountTranscations.add(Transaction.fromJson(v));
      });
    }

    if (json['taxTypesExempt'] != null) {
      json['taxTypesExempt'].forEach((v) {
        taxTypesExempt.add(TaxTypesExempt.fromJson(v));
      });
    }
    priceListId = json['priceListId'];
    taxable = json['taxable'];
    crNo = json['crNo'];

    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['mobile'] = mobile;
    data['email'] = email;
    data['debit_Limit'] = debitLimit;
    data['balance'] = balance;
    data['customerTypeId'] = customerTypeId;
    data['paymentMethodId'] = paymentMethodId;
    data['currencyId'] = currencyId;
    data['taxNumber'] = taxNumber;
    data['taxRegisterationName'] = taxRegisterationName;
    data['inBlackList'] = inBlackList;
    data['blackListNote'] = blackListNote;
    data['isHouseAccountEnabled'] = isHouseAccountEnabled;
    data['crNo'] = crNo;
    data['isLoyaltyProgramEnabled'] = isLoyaltyProgramEnabled;
    data['addresses'] = addersses.map((v) => v.toJson()).toList();
    data['taxTypesExempt'] = taxTypesExempt.map((v) => v.toJson()).toList();
    data['transactions'] =
        houseAccountTranscations.map((v) => v.toJson()).toList();
    data['priceListId'] = priceListId;
    data['taxable'] = taxable;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    data['is_TaxExempt'] = isTaxExempt;
    return data;
  }

  Map<String, dynamic> toJsonOrder() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    // data['mobile'] = mobile;
    // data['email'] = email;
    data['debit_Limit'] = debitLimit;
    data['balance'] = balance;
    data['customerTypeId'] = customerTypeId;
    data['paymentMethodId'] = paymentMethodId;
    data['currencyId'] = currencyId;
    data['taxNumber'] = taxNumber;
    data['taxRegisterationName'] = taxRegisterationName;
    data['inBlackList'] = inBlackList;
    data['blackListNote'] = blackListNote;
    data['isHouseAccountEnabled'] = isHouseAccountEnabled;
    data['isLoyaltyProgramEnabled'] = isLoyaltyProgramEnabled;
    data['taxTypesExempt'] = taxTypesExempt.map((v) => v.toJson()).toList();

    data['priceListId'] = priceListId;
    data['taxable'] = taxable;
    data['is_TaxExempt'] = isTaxExempt;

    return data;
  }

  static List<Customer> fromList(List<dynamic> data) =>
      data.map((e) => Customer.fromJson(e)).toList();
}

@Entity()
class Transaction {
  @Id()
  int? idSeq;
  String? id;
  String? refId;
  String? toAcount;
  double? amt;
  String? createBy;
  String? date;

  @Transient()
  ToAccount get getToAccount => convertStringToAccountTo(toAcount);

  Transaction(
      {this.id, this.refId, this.toAcount, this.amt, this.createBy, this.date});

  Transaction.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    refId = json['refId'];
    toAcount = json['toAcount'];
    amt = double.tryParse(json['amt'].toString()) ?? 0.0;
    createBy = json['createBy'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['refId'] = refId;
    data['toAcount'] = toAcount;
    data['amt'] = amt;
    data['createBy'] = createBy;
    data['date'] = date;
    return data;
  }
}
