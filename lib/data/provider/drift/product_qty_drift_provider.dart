import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:drift/drift.dart';

class ProductQtyDriftProvider {
  late MyDatabase db;
  ProductQtyDriftProvider({required this.db});

  Future<Map<int, List<ProductQtyEntityData>>> addProductQty(
      {required ProductQtyEntityData product, int? lastIdSeq}) async {
    var query = db.select(db.productQtyEntity);

    query.where((tbl) =>
        tbl.productId.equals(product.productId) &
        tbl.unitId.equals(product.unitId));

    ProductQtyEntityData? dataProductQty = await query.getSingleOrNull();
    late int id;
    if (dataProductQty != null) {
      double value = dataProductQty.qty + product.qty;
      dataProductQty = dataProductQty.copyWith(qty: value);
      id = await db
          .into(db.productQtyEntity)
          .insert(dataProductQty, mode: InsertMode.replace);
    } else {
      id = await db.into(db.productQtyEntity).insert(
            product,
            mode: InsertMode.replace,
          );
    }

    return {
      id: await getAllProductQty(lastIdSeq: lastIdSeq),
    };
  }

  Future<List<ProductQtyEntityData>> getAllProductQty({int? lastIdSeq}) async {
    return await db.select(db.productQtyEntity).get();
  }

  Future<bool> deleteProductQty({required int id}) async {
    var query = db.delete(db.productQtyEntity)
      ..where((tbl) => tbl.id.equals(id));
    int numRows = await query.go();
    return numRows >= 1;
  }

  Future<bool> checkAvailableQty(
      {required AppliedProduct product, int qty = 1}) async {
    ProductQtyEntityData? productQtyEntityData =
        await (db.select(db.productQtyEntity)
              ..where((tbl) =>
                  tbl.productId.equals(product.product.target!.id!) &
                  tbl.unitId.equals(product.unit.target!.id!)))
            .getSingleOrNull();
    if (productQtyEntityData == null) return true;
    double value = productQtyEntityData.qty - qty;
    return value >= 0;
  }

  Future<bool> reservationQty(
      {required AppliedProduct product, int qty = 1}) async {
    bool isAvailableQty = await checkAvailableQty(product: product, qty: qty);
    if (isAvailableQty) {
      ProductQtyEntityData productQtyEntityData =
          await (db.select(db.productQtyEntity)
                ..where((tbl) =>
                    tbl.productId.equals(product.product.target!.id!) &
                    tbl.unitId.equals(product.unit.target!.id!)))
              .getSingle();

      double value = productQtyEntityData.qty - qty;
      productQtyEntityData = productQtyEntityData.copyWith(qty: value);
      int numRows = await db.into(db.productQtyEntity).insert(
            productQtyEntityData,
            mode: InsertMode.replace,
          );

      return numRows >= 1;
    }
    return false;
  }

  Future<bool> unReservationQty(
      {required AppliedProduct product, int qty = 1}) async {
    ProductQtyEntityData productQtyEntityData =
        await (db.select(db.productQtyEntity)
              ..where((tbl) =>
                  tbl.productId.equals(product.product.target!.id!) &
                  tbl.unitId.equals(product.unit.target!.id!)))
            .getSingle();

    double value = productQtyEntityData.qty + qty;
    productQtyEntityData = productQtyEntityData.copyWith(qty: value);
    int numRows = await db.into(db.productQtyEntity).insert(
          productQtyEntityData,
          mode: InsertMode.replace,
        );
    return numRows >= 1;
  }

  Future<bool> unReservationQtyById({
    required String productId,
    required String unitId,
    double qty = 1,
  }) async {
    ProductQtyEntityData productQtyEntityData =
        await (db.select(db.productQtyEntity)
              ..where((tbl) =>
                  tbl.productId.equals(productId) & tbl.unitId.equals(unitId)))
            .getSingle();

    double value = productQtyEntityData.qty + qty;
    productQtyEntityData = productQtyEntityData.copyWith(qty: value);
    int numRows = await db.into(db.productQtyEntity).insert(
          productQtyEntityData,
          mode: InsertMode.replace,
        );
    return numRows >= 1;
  }

  Future<bool> updateProductQty({
    required String productId,
    required String unitId,
    required double qty,
    required String op,
    bool isAvailable = false,
  }) async {
    ProductQtyEntityData product = ProductQtyEntityData(
        // id: -1,
        qty: qty,
        productId: productId,
        unitId: unitId,
        isAvailable: isAvailable);
    if (op == "+") {
      await addProductQty(
        product: product,
      );
    } else {
      await unReservationQtyById(
        productId: productId,
        unitId: unitId,
        qty: qty,
      );
    }

    return true;
  }
}
