class Department {
  bool? isActive;
  int? displayOrder;
  String? imageUrl;
  String? id;
  String? name;

  Department(
      {this.isActive, this.displayOrder, this.imageUrl, this.id, this.name});

  Department.fromJson(Map<String, dynamic> json) {
    isActive = json['isActive'];
    displayOrder = json['displayOrder'];
    imageUrl = json['imageUrl'];
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['isActive'] = isActive;
    data['displayOrder'] = displayOrder;
    data['imageUrl'] = imageUrl;
    data['id'] = id;
    data['name'] = name;
    return data;
  }

  static List<Department> fromList(List<dynamic> data) =>
      data.map((e) => Department.fromJson(e)).toList();
}
