import 'package:bayan_pos_core/data/enum/table_shape.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Table {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  int? tableNumber;
  String? tableCode;
  int? numberOfIndividuals;
  double? minumumReservationPrice;
  int? status;
  int? shape;
  int? offsetX;
  int? offsetY;

  @Transient()
  TableShaps get getShape => convertStringToTableShaps(shape);

  Table({
    this.id,
    this.tableNumber,
    this.tableCode,
    this.numberOfIndividuals,
    this.minumumReservationPrice,
    this.status,
    this.shape,
    this.offsetX,
    this.offsetY,
  });

  Table.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tableNumber = json['tableNumber'];
    tableCode = json['tableCode'];
    numberOfIndividuals = json['numberOfIndividuals'];
    minumumReservationPrice =
        double.tryParse(json['minumumReservationPrice'].toString());
    status = json['status'];
    shape = json['shape'];
    offsetX = json['offsetX'];
    offsetY = json['offsetY'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['tableNumber'] = tableNumber;
    data['tableCode'] = tableCode;
    data['numberOfIndividuals'] = numberOfIndividuals;
    data['minumumReservationPrice'] = minumumReservationPrice;
    data['status'] = status;
    data['shape'] = status;
    data['offsetX'] = offsetX;
    data['offsetY'] = offsetY;
    return data;
  }
}
