// import 'package:drift/drift.dart';

import 'package:objectbox/objectbox.dart';

@Entity()
class PrinterCopyConfigModel {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? copyName;
  int template;

  /// وضع التقسيم والتجميع
  int splitMode = 1; // 'none' | 'per_item' | 'grouped'

  /// معرفات المجموعات المختارة (للتجميع)
  List<String> selectedGroupIds = [];

  TemplateType get getTemplate => convertStringToTemplateType(template);
  SplitModeType get getSplitMode => convertStringToSplitModeType(splitMode);

  PrinterCopyConfigModel({
    this.copyName,
    required this.template,
    required this.splitMode,
    List<String>? selectedGroupIds,
  }) {
    if (selectedGroupIds != null) {
      this.selectedGroupIds = selectedGroupIds;
    }
  }

  /// إنشاء من JSON
  factory PrinterCopyConfigModel.fromJson(Map<String, dynamic> json) {
    List<String> ids = [];
    if (json['selectedGroupIds'] != null) {
      ids = List<String>.from(json['selectedGroupIds']);
    } else if (json['selectedGroupId'] != null &&
        json['selectedGroupId'] is String) {
      if ((json['selectedGroupId'] as String).isNotEmpty) {
        ids.add(json['selectedGroupId']);
      }
    }

    return PrinterCopyConfigModel(
      copyName: json['copyName'] as String?,
      template: json['template'] as int,
      splitMode: json['splitMode'] as int,
      selectedGroupIds: ids,
    );
  }

  /// تحويل إلى JSON
  Map<String, dynamic> toJson() {
    return {
      if (copyName != null && copyName!.isNotEmpty) 'copyName': copyName,
      'template': template,
      'splitMode': splitMode,
      'selectedGroupIds': selectedGroupIds,
    };
  }

  /// نسخ مع تعديلات
  PrinterCopyConfigModel copyWith({
    String? copyName,
    int? template,
    int? splitMode,
    List<String>? selectedGroupIds,
  }) {
    return PrinterCopyConfigModel(
      copyName: copyName ?? this.copyName,
      template: template ?? this.template,
      splitMode: splitMode ?? this.splitMode,
      selectedGroupIds: selectedGroupIds ?? this.selectedGroupIds,
    );
  }
}

/// نموذج مجموعة التجميع
@Entity()
class PrinterGroupConfigModel {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;

  /// معرف فريد للمجموعة
  String? groupName;

  /// اسم المجموعة (اختياري)
  String? splitType;

  /// نوع التقسيم: 'full_menu' | 'departments' | 'categories' | 'custom'
  List<String>? departments;

  /// قائمة الفئات المختارة (للتقسيم المخصص)
  List<String>? categories;

  /// قائمة الفئات المختارة (للتقسيم المخصص)
  List<String>? products;

  PrinterGroupConfigModel({
    this.id,
    this.groupName,
    required this.splitType,
    this.departments,
    this.categories,
    this.products,
  });

  /// إنشاء من JSON
  factory PrinterGroupConfigModel.fromJson(Map<String, dynamic> json) {
    return PrinterGroupConfigModel(
      id: json['id'] as String,
      groupName: json['groupName'] as String?,
      splitType: json['splitType'] as String,
      departments: json['departments'] != null
          ? List<String>.from(json['departments'] as List)
          : null,
      categories: json['categories'] != null
          ? List<String>.from(json['categories'] as List)
          : null,
      products: json['products'] != null
          ? List<String>.from(json['products'] as List)
          : null,
    );
  }

  /// تحويل إلى JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      if (groupName != null && groupName!.isNotEmpty) 'groupName': groupName,
      'splitType': splitType,
      if (departments != null && departments!.isNotEmpty)
        'departments': departments,
      if (categories != null && categories!.isNotEmpty)
        'categories': categories,
      if (products != null && products!.isNotEmpty) 'products': products,
    };
  }

  /// نسخ مع تعديلات
  PrinterGroupConfigModel copyWith({
    String? id,
    String? groupName,
    String? splitType,
    List<String>? departments,
    List<String>? categories,
    List<String>? products,
  }) {
    return PrinterGroupConfigModel(
      id: id ?? this.id,
      groupName: groupName ?? this.groupName,
      splitType: splitType ?? this.splitType,
      departments: departments ?? this.departments,
      categories: categories ?? this.categories,
      products: products ?? this.products,
    );
  }
}

/// أنواع التقسيم للمجموعة
enum GroupSplitType {
  fullMenu, // تقسيم على مستوى القائمة كاملة
  departments, // تقسيم على مستوى الأقسام
  categories, // تقسيم على مستوى الفئات
  custom, // تقسيم مخصص
}

extension GroupSplitTypeExtension on GroupSplitType {
  String get name {
    switch (this) {
      case GroupSplitType.fullMenu:
        return 'تقسيم على مستوى القائمة كاملة';
      case GroupSplitType.departments:
        return 'تقسيم على مستوى الأقسام';
      case GroupSplitType.categories:
        return 'تقسيم على مستوى الفئات';
      case GroupSplitType.custom:
        return 'تقسيم مخصص';
    }
  }

  String get value {
    switch (this) {
      case GroupSplitType.fullMenu:
        return 'full_menu';
      case GroupSplitType.departments:
        return 'departments';
      case GroupSplitType.categories:
        return 'categories';
      case GroupSplitType.custom:
        return 'custom';
    }
  }
}

/// القوالب المتاحة
enum PrintTemplate {
  customerInvoice, // فاتورة العميل
  directInvoice, // فاتورة المباشر
  kitchenInvoice, // فاتورة المطبخ
  deliveryCompanyInvoice, // فاتورة شركة التوصيل
}

extension PrintTemplateExtension on PrintTemplate {
  String get name {
    switch (this) {
      case PrintTemplate.customerInvoice:
        return 'فاتورة العميل';
      case PrintTemplate.directInvoice:
        return 'فاتورة المباشر';
      case PrintTemplate.kitchenInvoice:
        return 'فاتورة المطبخ';
      case PrintTemplate.deliveryCompanyInvoice:
        return 'فاتورة شركة التوصيل';
    }
  }

  String get value {
    switch (this) {
      case PrintTemplate.customerInvoice:
        return 'customer_invoice';
      case PrintTemplate.directInvoice:
        return 'direct_invoice';
      case PrintTemplate.kitchenInvoice:
        return 'kitchen_invoice';
      case PrintTemplate.deliveryCompanyInvoice:
        return 'delivery_company_invoice';
    }
  }
}

/// أوضاع التقسيم
enum SplitMode {
  none, // بدون تقسيم
  perItem, // تقسيم لكل منتج بشكل مستقل
  grouped, // تجميع المنتجات المتشابهة
}

extension SplitModeExtension on SplitMode {
  String get name {
    switch (this) {
      case SplitMode.none:
        return 'بدون تقسيم';
      case SplitMode.perItem:
        return 'تقسيم لكل منتج بشكل مستقل';
      case SplitMode.grouped:
        return 'تجميع';
    }
  }

  String get value {
    switch (this) {
      case SplitMode.none:
        return 'none';
      case SplitMode.perItem:
        return 'per_item';
      case SplitMode.grouped:
        return 'grouped';
    }
  }
}

enum TemplateType {
  customerInvoice,
  directInvoice,
  kitchenInvoice,
  deliveryCompanyInvoice,
}

enum SplitModeType {
  none,
  grouped,
}

extension TemplateTypeExtension on TemplateType {
  int get value {
    switch (this) {
      case TemplateType.customerInvoice:
        return 0;
      case TemplateType.directInvoice:
        return 1;
      case TemplateType.kitchenInvoice:
        return 2;
      case TemplateType.deliveryCompanyInvoice:
        return 3;
    }
  }
}

extension SplitModeTypeExtension on SplitModeType {
  int get value {
    switch (this) {
      case SplitModeType.none:
        return 0;
      case SplitModeType.grouped:
        return 2;
    }
  }
}

convertStringToTemplateType(int? key) {
  switch (key) {
    case 0:
      return TemplateType.customerInvoice;
    case 1:
      return TemplateType.directInvoice;
    case 2:
      return TemplateType.kitchenInvoice;
    case 3:
      return TemplateType.deliveryCompanyInvoice;
  }
}

convertStringToSplitModeType(int? key) {
  // Reverting hack: Removed 'return SplitModeType.grouped;'
  switch (key) {
    case 0:
      return SplitModeType.none;
    case 2:
      return SplitModeType.grouped;
    default:
      return SplitModeType.none;
  }
}
