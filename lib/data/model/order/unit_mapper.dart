class UnitMapper {
  String? id;
  String? name;
  String? fName;
  String? unitCode;

  UnitMapper({this.id, this.name, this.fName, this.unitCode});

  UnitMapper.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    unitCode = json['unitCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['fName'] = this.fName;
    data['unitCode'] = this.unitCode;
    return data;
  }
}
