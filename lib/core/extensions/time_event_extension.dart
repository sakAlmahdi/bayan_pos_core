import 'package:bayan_pos_core/core/extensions/base_num_extension.dart';
import 'package:bayan_pos_core/data/enum/event_action_enum.dart';
import 'package:bayan_pos_core/data/model/discount/time_event.dart';
import 'package:flutter/material.dart';

extension TimeEventExtension on TimeEvent {
  String tralingInfoEvent() {
    switch (getEventAction) {
      case EventAction.fixedPrice:
        return "= ${timeEventValue.removeTrailingZeros} ";
      case EventAction.discountPriceFixed:
        return "- ${timeEventValue.removeTrailingZeros}";
      case EventAction.discountPricePercentage:
        return "- ${timeEventValue.removeTrailingZeros} %";
      case EventAction.addFixedPrice:
        return "+ ${timeEventValue.removeTrailingZeros}";
      case EventAction.addPricePercantage:
        return "+ ${timeEventValue.removeTrailingZeros} %";
      case EventAction.active:
        return "";
      case EventAction.disactive:
        return "";
    }
  }

  Color colorAction() {
    switch (getEventAction) {
      case EventAction.addFixedPrice:
      case EventAction.addPricePercantage:
      case EventAction.fixedPrice:
        return Colors.green;
      case EventAction.discountPriceFixed:
      case EventAction.discountPricePercentage:
        return Colors.red;

      case EventAction.active:
      case EventAction.disactive:
        return Colors.transparent;
    }
  }
}
