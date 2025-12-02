import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:flutter/material.dart' show Color;

enum ProductKitchenStatusEnum {
  draft,
  newProduct,
  canceled,
  waitingUserConfirm,
  updated,
  done
}

convertKeyToProductKitchenStatus(int? key) {
  switch (key) {
    case 1:
      return ProductKitchenStatusEnum.draft;
    case 2:
      return ProductKitchenStatusEnum.newProduct;
    case 3:
      return ProductKitchenStatusEnum.canceled;
    case 4:
      return ProductKitchenStatusEnum.waitingUserConfirm;
    case 5:
      return ProductKitchenStatusEnum.updated;
    case 6:
      return ProductKitchenStatusEnum.done;

    default:
      return ProductKitchenStatusEnum.draft;
  }
}

extension ProductKitchenStatusEnumEx on ProductKitchenStatusEnum {
  int toKey() {
    switch (this) {
      case ProductKitchenStatusEnum.draft:
        return 1;
      case ProductKitchenStatusEnum.newProduct:
        return 2;
      case ProductKitchenStatusEnum.canceled:
        return 3;
      case ProductKitchenStatusEnum.waitingUserConfirm:
        return 4;
      case ProductKitchenStatusEnum.updated:
        return 5;
      case ProductKitchenStatusEnum.done:
        return 6;

      default:
        return 1;
    }
  }

  Color color() {
    /*
    draft: #FEEFB3 (pale yellow)
    newProduct: #00FF00 (bright green)
    canceled: #FF0000 (dark red)
    waitingUserConfirm: #FFA500 (orange)
    updated: #4CAEF5 (teal)
    done: #800080 (bold purple)
    
    */
    switch (this) {
      case ProductKitchenStatusEnum.draft:
        return "#FEEFB3".color;
      case ProductKitchenStatusEnum.newProduct:
        return "#00FF00".color;
      case ProductKitchenStatusEnum.canceled:
        return "#FF0000".color;
      case ProductKitchenStatusEnum.waitingUserConfirm:
        return "#FFA500".color;
      case ProductKitchenStatusEnum.updated:
        return "#4CAEF5".color;
      case ProductKitchenStatusEnum.done:
        return "#800080".color;

      default:
        return ProductKitchenStatusEnum.draft.color();
    }
  }
}
