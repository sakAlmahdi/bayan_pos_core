class OrderPaymentDetailDto {
  String? key;
  String? value;

  OrderPaymentDetailDto({
    this.key,
    this.value,
  });

  factory OrderPaymentDetailDto.fromJson(Map<String, dynamic> json) {
    return OrderPaymentDetailDto(
      key: json['key'],
      value: json['value'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'value': value,
    };
  }
}
