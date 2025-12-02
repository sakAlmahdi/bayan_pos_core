class Response400 {
  String? type;
  String? title;
  int? status;
  String? detail;
  String? instance;
  Map<String, dynamic>? errors;

  Response400(
      {this.type,
      this.title,
      this.status,
      this.detail,
      this.instance,
      this.errors});

  Response400.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    title = json['title'];
    status = json['status'];
    detail = json['detail'];
    instance = json['instance'];
    errors = json['errors'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['title'] = title;
    data['status'] = status;
    data['detail'] = detail;
    data['instance'] = instance;
    if (errors != null) {
      data['errors'] = errors;
    }
    return data;
  }
}
