enum ChargeLevel {
  order,
  product,
}

ChargeLevel convertKeyToChargeLevel(int? key) {
  switch (key) {
    case 0:
      return ChargeLevel.order;
    case 1:
      return ChargeLevel.product;

    default:
      return ChargeLevel.order;
  }
}
