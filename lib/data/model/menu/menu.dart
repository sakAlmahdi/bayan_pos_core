import 'package:bayan_pos_core/data/model/menu/menu_category.dart';
import 'package:bayan_pos_core/data/model/menu/menu_department.dart';
import 'package:bayan_pos_core/data/model/menu/menu_gift_card.dart';
import 'package:bayan_pos_core/data/model/menu/menu_product.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Menu {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  // List<MenuDepartment>? departments;
  // List<MenuCategory>? categories;
  // List<MenuProduct>? products;
  // List<MenuGiftCard>? giftCards;
  final departments = ToMany<MenuDepartment>();
  final categories = ToMany<MenuCategory>();
  final products = ToMany<MenuProduct>();
  final giftCards = ToMany<MenuGiftCard>();

  Menu({
    this.idSeq = 0,
    this.id,
    this.name,
    this.fName,
  });

  Menu.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    if (json['departments'] != null) {
      json['departments'].forEach((v) {
        departments.add(MenuDepartment.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      json['categories'].forEach((v) {
        categories.add(MenuCategory.fromJson(v));
      });
    }
    if (json['products'] != null) {
      json['products'].forEach((v) {
        products!.add(MenuProduct.fromJson(v));
      });
    }
    if (json['giftCards'] != null) {
      json['giftCards'].forEach((v) {
        giftCards.add(MenuGiftCard.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['departments'] = departments.map((v) => v.toJson()).toList();
    data['categories'] = categories.map((v) => v.toJson()).toList();
    data['products'] = products.map((v) => v.toJson()).toList();
    data['giftCards'] = giftCards.map((v) => v.toJson()).toList();
    return data;
  }
}
