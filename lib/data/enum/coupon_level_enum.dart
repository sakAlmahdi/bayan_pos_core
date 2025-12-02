/// Product = 0,
/// Order = 1,

enum CouponLevel { order, product }

CouponLevel convetStringToCouponLevel(int? key) {
  switch (key) {
    case 0:
      return CouponLevel.product;

    case 1:
      return CouponLevel.order;

    default:
      return CouponLevel.order;
  }
}
