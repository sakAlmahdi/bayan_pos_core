class OrdersStatistics {
  int? numberOrders = 0;
  int? numberOrderNotSync = 0;
  int? numberOrderSync = 0;
  int? numberOrdersActive = 0;
  int? numberOrdersRetruen = 0;
  int? numberOrdersDone = 0;
  int? numberOrdersCansel = 0;
  int? numberOrdersDraft = 0;

  OrdersStatistics({
    this.numberOrders = 0,
    this.numberOrderNotSync = 0,
    this.numberOrderSync = 0,
    this.numberOrdersActive = 0,
    this.numberOrdersRetruen = 0,
    this.numberOrdersDone = 0,
    this.numberOrdersCansel = 0,
    this.numberOrdersDraft = 0,
  });

  OrdersStatistics.fromJson(Map<String, dynamic> json) {
    numberOrders = json['numberOrders'];
    numberOrderNotSync = json['numberOrderNotSync'];
    numberOrderSync = json['numberOrderSync'];
    numberOrdersActive = json['numberOrdersActive'];
    numberOrdersRetruen = json['numberOrdersRetruen'];
    numberOrdersDone = json['numberOrdersDone'];
    numberOrdersCansel = json['numberOrdersCansel'];
    numberOrdersDraft = json['numberOrdersDraft'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['numberOrders'] = numberOrders;
    data['numberOrderNotSync'] = numberOrderNotSync;
    data['numberOrderSync'] = numberOrderSync;
    data['numberOrdersActive'] = numberOrdersActive;
    data['numberOrdersRetruen'] = numberOrdersRetruen;
    data['numberOrdersDone'] = numberOrdersDone;
    data['numberOrdersCansel'] = numberOrdersCansel;
    data['numberOrdersDraft'] = numberOrdersDraft;
    return data;
  }
}
