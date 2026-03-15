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
  draft,
  scheduled
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
    case 8:
      return OrderStatusC.scheduled;
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
      case OrderStatusC.scheduled:
        return 8;
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
      case OrderStatusC.scheduled:
        return 'مجدول';
    }
  }

  Color toColor() {
    switch (this) {
      case OrderStatusC.pending:
        return "#FFA726".color; // برتقالي للمعلق
      case OrderStatusC.active:
        return "#2196F3".color; // أزرق للنشط
      case OrderStatusC.declined:
        return "#F44336".color; // أحمر للملغي
      case OrderStatusC.returned:
        return "#9C27B0".color; // بنفسجي للمرتجع
      case OrderStatusC.joined:
        return "#03A9F4".color; // أزرق فاتح للمدموج
      case OrderStatusC.lvoid:
        return "#757575".color; // رمادي غامق للـ void
      case OrderStatusC.done:
        return "#4CAF50".color; // أخضر للمكتمل
      case OrderStatusC.draft:
        return "#BDBDBD".color; // رمادي فاتح للمسودة
      case OrderStatusC.scheduled:
        return "#FF9800".color; // برتقالي غامق للمجدول
    }
  }
}
