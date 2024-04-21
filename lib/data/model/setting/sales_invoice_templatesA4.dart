import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:bayan_pos_core/data/enum/language_type.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class SalesInvoiceTemplatesA4 {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  String? menuName;
  String? fMenuName;
  String? title;
  String? fTitle;
  int? printLanguage;
  int? invoiceCategory;
  String? appsFormPath;
  @Transient()
  String get getPrinterLanguage => convertLanguageTypeToString(printLanguage);

  @Transient()
  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;

  SalesInvoiceTemplatesA4(
      {this.id,
      this.name,
      this.fName,
      this.menuName,
      this.fMenuName,
      this.title,
      this.fTitle,
      this.printLanguage,
      this.invoiceCategory,
      this.appsFormPath});

  SalesInvoiceTemplatesA4.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    menuName = json['menuName'];
    fMenuName = json['fMenuName'];
    title = json['title'];
    fTitle = json['fTitle'];
    printLanguage = json['print_language'];
    invoiceCategory = json['invoiceCategory'];
    appsFormPath = json['appsFormPath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['menuName'] = menuName;
    data['fMenuName'] = fMenuName;
    data['title'] = title;
    data['fTitle'] = fTitle;
    data['print_language'] = printLanguage;
    data['invoiceCategory'] = invoiceCategory;
    data['appsFormPath'] = appsFormPath;
    return data;
  }
}
