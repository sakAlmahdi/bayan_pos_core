import 'package:objectbox/objectbox.dart';

@Entity()
class Group {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? groupId;
  String? groupName;
  String? reference;

  Group({this.id, this.groupId, this.groupName, this.reference});

  Group.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    groupId = json['groupId'];
    groupName = json['groupName'];
    reference = json['reference'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['groupId'] = groupId;
    data['groupName'] = groupName;
    data['reference'] = reference;
    return data;
  }
}
