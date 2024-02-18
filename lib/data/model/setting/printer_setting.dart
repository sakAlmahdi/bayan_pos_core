import 'package:objectbox/objectbox.dart';

@Entity()
class PrinterSetting {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? printerId;
  String? paperSize;
  int? scale;
  int? imageCutterFactor;
  String? cutterCommandCode;
  bool? autoPrint;
  int? numberOfCopy;

  PrinterSetting(
      {this.id,
      this.printerId,
      this.paperSize,
      this.scale,
      this.imageCutterFactor,
      this.cutterCommandCode,
      this.autoPrint,
      this.numberOfCopy});

  PrinterSetting.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    printerId = json['printerId'];
    paperSize = json['paperSize'];
    scale = json['scale'];
    imageCutterFactor = json['imageCutterFactor'];
    cutterCommandCode = json['cutterCommandCode'];
    autoPrint = json['autoPrint'];
    numberOfCopy = json['numberOfCopy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['printerId'] = printerId;
    data['paperSize'] = paperSize;
    data['scale'] = scale;
    data['imageCutterFactor'] = imageCutterFactor;
    data['cutterCommandCode'] = cutterCommandCode;
    data['autoPrint'] = autoPrint;
    data['numberOfCopy'] = numberOfCopy;
    return data;
  }
}
