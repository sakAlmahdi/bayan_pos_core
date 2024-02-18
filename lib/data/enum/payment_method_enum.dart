///  Cash = 1,
///  Bank = 2,
///  Card = 3,
///  Online = 4,
///  Credit = 5,
///  GiftCard = 6,

enum PaymentMethods {
  cash,
  bank,
  card,
  gitCard,
  online,
  credit,
  // houseAccount,
}

PaymentMethods convetStringToPaymentMethod(int? key) {
  switch (key) {
    case 1:
      return PaymentMethods.cash;
    case 2:
      return PaymentMethods.bank;
    case 3:
      return PaymentMethods.card;
    case 4:
      return PaymentMethods.online;
    case 5:
      return PaymentMethods.credit;
    case 6:
      return PaymentMethods.gitCard;

    default:
      return PaymentMethods.cash;
  }
}

extension PaymentMethodEnumEx on PaymentMethods {
  int toKey() {
    switch (this) {
      case PaymentMethods.cash:
        return 1;
      case PaymentMethods.bank:
        return 2;
      case PaymentMethods.card:
        return 3;
      case PaymentMethods.online:
        return 4;
      case PaymentMethods.credit:
        return 5;
      case PaymentMethods.gitCard:
        return 6;
      // case PaymentMethods.houseAccount:
      //   return 7;
    }
  }
}
