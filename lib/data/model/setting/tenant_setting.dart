import 'package:objectbox/objectbox.dart';

@Entity()
class TenantSetting {
  @Id()
  int? idSeq;
  String? logoUrl;
  String? companyName;
  String? fCompanyName;
  String? activity;
  String? fActivity;
  String? phoneNumber;
  String? faxNumber;
  String? webSite;
  String? email;
  String? taxRegistrationName;
  String? crNo;
  String? taxNo;
  String? zakatRegistrationNumber;
  String? municipalLicenseNumber;
  String? gulfCouncilIdentificationNumber;
  String? sagiALicenseNumber;
  String? country;
  String? postalCode;
  String? province;
  String? city;
  String? district;
  String? street;
  String? fProvince;
  String? fCity;
  String? fDistrict;
  String? fStreet;
  String? buildingNo;
  String? floorNo;
  String? officeNo;
  String? additionalNo;
  int? invoiceRoundFactor;
  String? localCurrencyId;
  String? salesPriceCurrencyId;
  String? inventoryCostCurrencyId;
  String? payrollCurrencyId;
  int? inventoryCalculateCostMethod;
  int? stockInventoryType;
  int? printLanguage;
  String? defaultLanguage;
  String? secondLanguage;

  TenantSetting(
      {this.logoUrl,
      this.companyName,
      this.fCompanyName,
      this.activity,
      this.fActivity,
      this.phoneNumber,
      this.faxNumber,
      this.webSite,
      this.email,
      this.taxRegistrationName,
      this.crNo,
      this.taxNo,
      this.zakatRegistrationNumber,
      this.municipalLicenseNumber,
      this.gulfCouncilIdentificationNumber,
      this.sagiALicenseNumber,
      this.country,
      this.postalCode,
      this.province,
      this.city,
      this.district,
      this.street,
      this.fProvince,
      this.fCity,
      this.fDistrict,
      this.fStreet,
      this.buildingNo,
      this.floorNo,
      this.officeNo,
      this.additionalNo,
      this.invoiceRoundFactor,
      this.localCurrencyId,
      this.salesPriceCurrencyId,
      this.inventoryCostCurrencyId,
      this.payrollCurrencyId,
      this.inventoryCalculateCostMethod,
      this.stockInventoryType,
      this.printLanguage,
      this.defaultLanguage,
      this.secondLanguage});

  TenantSetting.fromJson(Map<String, dynamic> json) {
    logoUrl = json['logoUrl'];
    companyName = json['companyName'];
    fCompanyName = json['f_Company_Name'];
    activity = json['activity'];
    fActivity = json['f_Activity'];
    phoneNumber = json['phoneNumber'];
    faxNumber = json['faxNumber'];
    webSite = json['webSite'];
    email = json['email'];
    taxRegistrationName = json['tax_Registration_Name'];
    crNo = json['crNo'];
    taxNo = json['taxNo'];
    zakatRegistrationNumber = json['zakat_Registration_Number'];
    municipalLicenseNumber = json['municipal_License_Number'];
    gulfCouncilIdentificationNumber =
        json['gulf_Council_Identification_Number'];
    sagiALicenseNumber = json['sagiA_License_Number'];
    country = json['country'];
    postalCode = json['postal_Code'];
    province = json['province'];
    city = json['city'];
    district = json['district'];
    street = json['street'];
    fProvince = json['fProvince'];
    fCity = json['fCity'];
    fDistrict = json['fDistrict'];
    fStreet = json['fStreet'];
    buildingNo = json['building_No'];
    floorNo = json['floor_No'];
    officeNo = json['office_No'];
    additionalNo = json['additional_No'];
    invoiceRoundFactor = json['invoice_Round_Factor'];
    localCurrencyId = json['localCurrencyId'];
    salesPriceCurrencyId = json['salesPriceCurrencyId'];
    inventoryCostCurrencyId = json['inventoryCostCurrencyId'];
    payrollCurrencyId = json['payrollCurrencyId'];
    inventoryCalculateCostMethod = json['inventoryCalculateCostMethod'];
    stockInventoryType = json['stockInventoryType'];
    printLanguage = json['print_language'];
    defaultLanguage = json['default_Language'];
    secondLanguage = json['second_Language'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['logoUrl'] = logoUrl;
    data['companyName'] = companyName;
    data['f_Company_Name'] = fCompanyName;
    data['activity'] = activity;
    data['f_Activity'] = fActivity;
    data['phoneNumber'] = phoneNumber;
    data['faxNumber'] = faxNumber;
    data['webSite'] = webSite;
    data['email'] = email;
    data['tax_Registration_Name'] = taxRegistrationName;
    data['crNo'] = crNo;
    data['taxNo'] = taxNo;
    data['zakat_Registration_Number'] = zakatRegistrationNumber;
    data['municipal_License_Number'] = municipalLicenseNumber;
    data['gulf_Council_Identification_Number'] =
        gulfCouncilIdentificationNumber;
    data['sagiA_License_Number'] = sagiALicenseNumber;
    data['country'] = country;
    data['postal_Code'] = postalCode;
    data['province'] = province;
    data['city'] = city;
    data['district'] = district;
    data['street'] = street;
    data['fProvince'] = fProvince;
    data['fCity'] = fCity;
    data['fDistrict'] = fDistrict;
    data['fStreet'] = fStreet;
    data['building_No'] = buildingNo;
    data['floor_No'] = floorNo;
    data['office_No'] = officeNo;
    data['additional_No'] = additionalNo;
    data['invoice_Round_Factor'] = invoiceRoundFactor;
    data['localCurrencyId'] = localCurrencyId;
    data['salesPriceCurrencyId'] = salesPriceCurrencyId;
    data['inventoryCostCurrencyId'] = inventoryCostCurrencyId;
    data['payrollCurrencyId'] = payrollCurrencyId;
    data['inventoryCalculateCostMethod'] = inventoryCalculateCostMethod;
    data['stockInventoryType'] = stockInventoryType;
    data['print_language'] = printLanguage;
    data['default_Language'] = defaultLanguage;
    data['second_Language'] = secondLanguage;
    return data;
  }
}
