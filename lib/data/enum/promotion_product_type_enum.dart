enum PromotionProductType {
  purchase,
  discount;

  // Function to get the key (integer value)
  int toKey() {
    switch (this) {
      case PromotionProductType.purchase:
        return 1;
      case PromotionProductType.discount:
        return 2;
    }
  }

  // Function to get the name (string representation)
  String toName() {
    switch (this) {
      case PromotionProductType.purchase:
        return 'purchase';
      case PromotionProductType.discount:
        return 'discount';
    }
  }

  // Optional: A static method to get the enum from a key
  static PromotionProductType fromKey(int key) {
    switch (key) {
      case 1:
        return PromotionProductType.purchase;
      case 2:
        return PromotionProductType.discount;
      default:
        throw ArgumentError('Invalid key: $key');
    }
  }

  // Optional: A static method to get the enum from a name
  static PromotionProductType fromName(String name) {
    switch (name) {
      case 'purchase':
        return PromotionProductType.purchase;
      case 'discount':
        return PromotionProductType.discount;
      default:
        throw ArgumentError('Invalid name: $name');
    }
  }
}
