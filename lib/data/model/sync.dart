import 'package:bayan_pos_core/data/model/device/device.dart';
import 'package:bayan_pos_core/data/model/order/payment_method.dart';

class SyncData {
  // Branch? branch;
  // List<DeliveryZone>? deliveryZones;
  // List<DeliveryCompany>? deliveryCompanies;
  // List<Customer>? customers;
  // List<Currencies>? currencies;
  List<Device>? devices;
  // List<ResturantSection>? resturantSections;
  // List<PriceList>? priceLists;
  // List<Discount>? discounts;
  // List<Coupon>? coupons;
  // List<TimeEvent>? timeEvents;
  // List<Promotion>? promotions;
  // List<Menu>? productMenus;
  // List<Department1>? departments;
  // List<Categories>? categories;
  // List<Product1>? products;
  // List<Printer>? printers;
  // BillSetting? printSetting;
  // LoyaltySetting? loyaltySetting;
  // List<CashierSetting>? cashierSetting = [];
  // TaxSetting? taxSetting;
  // PolicySetting? policySetting;
  // List<PosUser1>? users;

  // List<TaxC>? taxes = [];
  // List<TaxGroup>? taxGroups = [];
  // List<Fee>? fees = [];
  // List<ReasonsCanceling>? reasonsCanceling = [];
  List<PaymentMethod>? paymentMethods = [];

  SyncData({
    // this.branch,
    // this.deliveryZones,
    // this.deliveryCompanies,
    // this.customers,
    // this.currencies,
    this.devices,
    // this.resturantSections,
    // this.priceLists,
    // this.discounts,
    // this.coupons,
    // this.timeEvents,
    // this.promotions,
    // this.productMenus,
    // this.departments,
    // // this.categories,
    // this.products,
    // this.printers,
    // // this.printSetting,
    // this.loyaltySetting,
    // this.cashierSetting,
    // this.taxSetting,
    // this.policySetting,
    // this.taxes,
    // this.taxGroups,
    // this.fees,
    // this.reasonsCanceling,
    // this.paymentMethods,
    // this.users
  });

  SyncData.fromJson(Map<String, dynamic> json) {
    // branch = json['branch'] != null ? Branch.fromJson(json['branch']) : null;
    // if (json['deliveryZones'] != null) {
    //   deliveryZones = <DeliveryZone>[];
    //   json['deliveryZones'].forEach((v) {
    //     deliveryZones!.add(DeliveryZone.fromJson(v));
    //   });
    // }
    // if (json['deliveryCompanies'] != null) {
    //   deliveryCompanies = <DeliveryCompany>[];
    //   json['deliveryCompanies'].forEach((v) {
    //     deliveryCompanies!.add(DeliveryCompany.fromJson(v));
    //   });
    // }
    // if (json['customers'] != null) {
    //   customers = <Customer>[];
    //   json['customers'].forEach((v) {
    //     customers!.add(Customer.fromJson(v));
    //   });
    // }
    // if (json['currencies'] != null) {
    //   currencies = <Currencies>[];
    //   json['currencies'].forEach((v) {
    //     currencies!.add(Currencies.fromJson(v));
    //   });
    // }
    if (json['devices'] != null) {
      devices = <Device>[];
      json['devices'].forEach((v) {
        devices!.add(Device.fromJson(v));
      });
    }
    // if (json['resturantSections'] != null) {
    //   resturantSections = <ResturantSection>[];
    //   json['resturantSections'].forEach((v) {
    //     resturantSections!.add(ResturantSection.fromJson(v));
    //   });
    // }
    if (json['priceLists'] != null) {
      //   priceLists = <PriceList>[];
      //   json['priceLists'].forEach((v) {
      //     priceLists!.add(PriceList.fromJson(v));
      //   });
      // }
      // if (json['discounts'] != null) {
      //   discounts = <Discount>[];
      //   json['discounts'].forEach((v) {
      //     discounts!.add(Discount.fromJson(v));
      //   });
      // }
      // if (json['coupons'] != null) {
      //   coupons = <Coupon>[];
      //   json['coupons'].forEach((v) {
      //     coupons!.add(Coupon.fromJson(v));
      //   });
      // }
      // if (json['timeEvents'] != null) {
      //   timeEvents = <TimeEvent>[];
      //   json['timeEvents'].forEach((v) {
      //     timeEvents!.add(TimeEvent.fromJson(v));
      //   });
      // }
      // if (json['promotions'] != null) {
      //   promotions = <Promotion>[];
      //   json['promotions'].forEach((v) {
      //     promotions!.add(Promotion.fromJson(v));
      //   });
      // }
      // if (json['productMenus'] != null) {
      //   productMenus = <Menu>[];
      //   json['productMenus'].forEach((v) {
      //     productMenus!.add(Menu.fromJson(v));
      //   });
      // }
      // if (json['departments'] != null) {
      //   departments = <Department1>[];
      //   json['departments'].forEach((v) {
      //     departments!.add(Department1.fromJson(v));
      //   });
      // }
      // if (json['fees'] != null) {
      //   fees = <Fee>[];
      //   json['fees'].forEach((v) {
      //     fees!.add(Fee.fromJson(v));
      //   });
      // }
      // // if (json['categories'] != null) {
      // //   categories = <Categories>[];
      // //   json['categories'].forEach((v) {
      // //     categories!.add(new Categories.fromJson(v));
      // //   });
      // // }
      // if (json['products'] != null) {
      //   products = <Product1>[];
      //   json['products'].forEach((v) {
      //     products!.add(Product1.fromJson(v));
      //   });
      // }
      // if (json['printers'] != null) {
      //   printers = <Printer>[];
      //   json['printers'].forEach((v) {
      //     printers!.add(Printer.fromJson(v));
      //   });
      // }
      // printSetting = json['printSetting'] != null
      //     ? BillSetting.fromJson(json['printSetting'])
      //     : null;
      // loyaltySetting = json['loyaltySetting'] != null
      //     ? LoyaltySetting.fromJson(json['loyaltySetting'])
      //     : null;
      // // cashierSetting = json['cashierSetting'] != null
      // //     ? CashierSetting.fromJson(json['cashierSetting'])
      // //     : null;
      // if (json['cashierSetting'] != null) {
      //   json['cashierSetting'].forEach((e) {
      //     cashierSetting?.add(CashierSetting.fromJson(e));
      //   });
      // }
      // taxSetting = json['taxSetting'] != null
      //     ? TaxSetting.fromJson(json['taxSetting'])
      //     : null;
      // policySetting = json['policySetting'] != null
      //     ? PolicySetting.fromJson(json['policySetting'])
      //     : null;
      // if (json['users'] != null) {
      //   users = <PosUser1>[];
      //   json['users'].forEach((v) {
      //     users!.add(PosUser1.fromJson(v));
      //   });
      // }
      // if (json['taxGroups'] != null) {
      //   taxGroups = <TaxGroup>[];
      //   json['taxGroups'].forEach((v) {
      //     taxGroups!.add(TaxGroup.fromJson(v));
      //   });
      // }
      // if (json['taxes'] != null) {
      //   taxes = <TaxC>[];
      //   json['taxes'].forEach((v) {
      //     taxes!.add(TaxC.fromJson(v));
      //   });
      // }
      // if (json['reasonsCanceling'] != null) {
      //   reasonsCanceling = <ReasonsCanceling>[];
      //   json['reasonsCanceling'].forEach((v) {
      //     reasonsCanceling!.add(ReasonsCanceling.fromJson(v));
      //   });
      // }

      if (json['paymentMethods'] != null) {
        paymentMethods = <PaymentMethod>[];
        json['paymentMethods'].forEach((v) {
          paymentMethods!.add(PaymentMethod.fromJson(v));
        });
      }
    }

    Map<String, dynamic> toJson() {
      final Map<String, dynamic> data = <String, dynamic>{};
      // if (branch != null) {
      //   data['branch'] = branch!.toJson();
      // }
      // if (deliveryZones != null) {
      //   data['deliveryZones'] = deliveryZones!.map((v) => v.toJson()).toList();
      // }
      // if (deliveryCompanies != null) {
      //   data['deliveryCompanies'] =
      //       deliveryCompanies!.map((v) => v.toJson()).toList();
      // }
      // if (customers != null) {
      //   data['customers'] = customers!.map((v) => v.toJson()).toList();
      // }
      // if (currencies != null) {
      //   data['currencies'] = currencies!.map((v) => v.toJson()).toList();
      // }
      if (devices != null) {
        data['devices'] = devices!.map((v) => v.toJson()).toList();
      }
      // if (resturantSections != null) {
      //   data['resturantSections'] =
      //       resturantSections!.map((v) => v.toJson()).toList();
      // }
      // if (priceLists != null) {
      //   data['priceLists'] = priceLists!.map((v) => v.toJson()).toList();
      // }
      // if (discounts != null) {
      //   data['discounts'] = discounts!.map((v) => v.toJson()).toList();
      // }
      // if (coupons != null) {
      //   data['coupons'] = coupons!.map((v) => v.toJson()).toList();
      // }
      // if (timeEvents != null) {
      //   data['timeEvents'] = timeEvents!.map((v) => v.toJson()).toList();
      // }
      // if (promotions != null) {
      //   data['promotions'] = promotions!.map((v) => v.toJson()).toList();
      // }
      // if (productMenus != null) {
      //   data['productMenus'] = productMenus!.map((v) => v.toJson()).toList();
      // }
      // if (departments != null) {
      //   data['departments'] = departments!.map((v) => v.toJson()).toList();
      // }
      // // if (categories != null) {
      // //   data['categories'] = categories!.map((v) => v.toJson()).toList();
      // // }
      // if (products != null) {
      //   data['products'] = products!.map((v) => v.toJson()).toList();
      // }
      // if (printers != null) {
      //   data['printers'] = printers!.map((v) => v.toJson()).toList();
      // }
      // // if (printSetting != null) {
      // //   data['printSetting'] = printSetting!.toJson();
      // // }
      // if (loyaltySetting != null) {
      //   data['loyaltySetting'] = loyaltySetting!.toJson();
      // }
      // if (cashierSetting != null) {
      //   data['cashierSetting'] = cashierSetting!.map((e) => e.toJson()).toList();
      // }
      // if (taxSetting != null) {
      //   data['taxSetting'] = taxSetting!.toJson();
      // }
      // if (policySetting != null) {
      //   data['policySetting'] = policySetting!.toJson();
      // }
      // if (users != null) {
      //   data['users'] = users!.map((v) => v.toJson()).toList();
      // }
      // if (taxGroups != null) {
      //   data['taxGroups'] = taxGroups!.map((v) => v.toJson()).toList();
      // }
      // if (taxes != null) {
      //   data['taxes'] = taxes!.map((v) => v.toJson()).toList();
      // }
      // if (fees != null) {
      //   data['fees'] = fees!.map((v) => v.toJson()).toList();
      // }
      if (paymentMethods != null) {
        data['paymentMethods'] =
            paymentMethods!.map((v) => v.toJson()).toList();
      }
      return data;
    }
  }
}
