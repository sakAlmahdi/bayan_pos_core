import 'package:bayan_pos_core/core/extensions/base_string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

////Pending=0,
// Active=1    ,
// Declined=2,
// Returned=3,
// Joined=4,
// Lvoid=5,
// Done=6,
// Draft=7

enum OrderStatus { pending, success, canceled }

enum OrderStatusC {
  pending,
  active,
  declined,
  returned,
  joined,
  lvoid,
  done,
  draft
}

OrderStatusC convertStringToOrderStatus(int type) {
  switch (type) {
    case 0:
      return OrderStatusC.pending;
    case 1:
      return OrderStatusC.active;
    case 2:
      return OrderStatusC.declined;
    case 3:
      return OrderStatusC.returned;
    case 4:
      return OrderStatusC.joined;
    case 5:
      return OrderStatusC.lvoid;
    case 6:
      return OrderStatusC.done;
    case 7:
      return OrderStatusC.draft;
    default:
      return OrderStatusC.draft;
  }
}

extension OrderStatusCExtension on OrderStatusC {
  int toKey() {
    switch (this) {
      case OrderStatusC.pending:
        return 0;
      case OrderStatusC.active:
        return 1;
      case OrderStatusC.declined:
        return 2;
      case OrderStatusC.returned:
        return 3;
      case OrderStatusC.joined:
        return 4;
      case OrderStatusC.lvoid:
        return 5;
      case OrderStatusC.done:
        return 6;
      case OrderStatusC.draft:
        return 7;
    }
  }

  String toName() {
    switch (this) {
      case OrderStatusC.pending:
        return 'معلق';
      case OrderStatusC.active:
        return 'نشط';
      case OrderStatusC.declined:
        return 'ملغي';
      case OrderStatusC.returned:
        return 'مرتجع';
      case OrderStatusC.joined:
        return 'مدموج';
      case OrderStatusC.lvoid:
        return 'void';
      case OrderStatusC.done:
        return 'تم';
      case OrderStatusC.draft:
        return 'مسودة';
    }
  }

  Color toColor() {
    switch (this) {
      case OrderStatusC.pending:
        return "#CCCCCC".color;
      case OrderStatusC.active:
        return "#00FF00".color;
      case OrderStatusC.declined:
        return "#990000".color;
      case OrderStatusC.returned:
        return "#996633".color;
      case OrderStatusC.joined:
        return "#FF9933".color;
      case OrderStatusC.lvoid:
        return "#666666".color;
      case OrderStatusC.done:
        return "#00CC66".color;
      case OrderStatusC.draft:
        return "#D3D3D3".color;
    }
  }
}
