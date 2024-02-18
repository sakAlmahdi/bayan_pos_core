class DrawerReportInfo {
  double? totalPayIn;
  double? totalPayOut;
  double? totalCashDrop;
  double? totalPaymentOperation;
  double? totalReturnOperation;
  int? countOpenDrawers;

  DrawerReportInfo(
      {this.totalPayIn,
      this.totalPayOut,
      this.totalCashDrop,
      this.totalPaymentOperation,
      this.totalReturnOperation,
      this.countOpenDrawers});

  DrawerReportInfo.fromJson(Map<String, dynamic> json) {
    totalPayIn = json['totalPayIn'];
    totalPayOut = json['totalPayOut'];
    totalCashDrop = json['totalCashDrop'];
    totalPaymentOperation = json['totalPaymentOperation'];
    totalReturnOperation = json['totalReturnOperation'];
    countOpenDrawers = json['countOpenDrawers'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalPayIn'] = totalPayIn;
    data['totalPayOut'] = totalPayOut;
    data['totalCashDrop'] = totalCashDrop;
    data['totalPaymentOperation'] = totalPaymentOperation;
    data['totalReturnOperation'] = totalReturnOperation;
    data['countOpenDrawers'] = countOpenDrawers;
    return data;
  }

  DrawerReportInfo copyWith({
    double? totalPayIn,
    double? totalPayOut,
    double? totalCashDrop,
    double? totalPaymentOperation,
    double? totalReturnOperation,
    int? countOpenDrawers,
  }) {
    return DrawerReportInfo(
      totalPayIn: totalPayIn ?? this.totalPayIn,
      totalPayOut: totalPayOut ?? this.totalPayOut,
      totalCashDrop: totalCashDrop ?? this.totalCashDrop,
      totalPaymentOperation:
          totalPaymentOperation ?? this.totalPaymentOperation,
      totalReturnOperation: totalReturnOperation ?? this.totalReturnOperation,
      countOpenDrawers: countOpenDrawers ?? this.countOpenDrawers,
    );
  }
}
