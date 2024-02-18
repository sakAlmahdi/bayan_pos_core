import 'package:objectbox/objectbox.dart';

@Entity()
class PolicySetting {
  @Id()
  int? idSeq;
  bool? enableOrderCancelation;
  bool? enablePosRefund;
  bool? enableUsingExpiredTicket;
  String? orderPolicyAR;
  String? orderPolicyEN;

  PolicySetting(
      {this.enableOrderCancelation,
      this.enablePosRefund,
      this.enableUsingExpiredTicket,
      this.orderPolicyAR,
      this.orderPolicyEN});

  PolicySetting.fromJson(Map<String, dynamic> json) {
    enableOrderCancelation = json['enable_Order_Cancelation'];
    enablePosRefund = json['enable_Pos_Refund'];
    enableUsingExpiredTicket = json['enable_Using_Expired_Ticket'];
    orderPolicyAR = json['order_Policy_AR'];
    orderPolicyEN = json['order_Policy_EN'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['enable_Order_Cancelation'] = enableOrderCancelation;
    data['enable_Pos_Refund'] = enablePosRefund;
    data['enable_Using_Expired_Ticket'] = enableUsingExpiredTicket;
    data['order_Policy_AR'] = orderPolicyAR;
    data['order_Policy_EN'] = orderPolicyEN;
    return data;
  }
}
