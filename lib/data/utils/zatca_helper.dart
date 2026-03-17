import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:uuid/uuid.dart';
import '../entity/drift_db.dart';

/// كلاس مساعد لتولي مهام هيئة الزكاة والضريبة والجمارك (ZATCA Phase 2)
class ZatcaHelper {
  /// بناءً على متطلبات ZATCA Phase 2، يجب أن يكون الهاش مبنياً على ملف الـ XML.
  /// هذه الدالة هي الهيكل الأساسي الذي سيقوم بالتالي:
  /// 1. تحويل بيانات الطلب (order) إلى صيغة UBL 2.1 XML.
  /// 2. تطبيق خوارزمية التنظيف (Canonicalization C14N).
  /// 3. تشفير الـ XML النظيف باستخدام SHA-256 للحصول على الهاش.
  /// 4. تحويل الناتج إلى Base64.
  static String generateInvoiceHash({
    required String orderRef,
    required OrderEntityV2Data order,
    required int icv,
    required String prevHash,
  }) {
    // 1. بناء ملف الـ XML (UBL 2.1) الفعلي المعتمد لدى ZATCA للمرحلة الثانية.
    // ملاحظة: هذا قالب مبسط (Simplified) يوضح العناصر الضرورية لحساب الهاش.
    // في بيئة الإنتاج، ستحتاج إلى تفريغ جميع بيانات البائع والعميل والمنتجات بدقة.
    String issueDate = order.startDate?.toIso8601String().split('T')[0] ?? '';
    String issueTime =
        order.startDate?.toIso8601String().split('T')[1].substring(0, 8) ?? '';

    String xmlContent = '''<?xml version="1.0" encoding="UTF-8"?>
<Invoice xmlns="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:ext="urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2">
    <cbc:ProfileID>reporting:1.0</cbc:ProfileID>
    <cbc:ID>$orderRef</cbc:ID>
    <cbc:UUID>${const Uuid().v4()}</cbc:UUID>
    <cbc:IssueDate>$issueDate</cbc:IssueDate>
    <cbc:IssueTime>$issueTime</cbc:IssueTime>
    <cbc:InvoiceTypeCode name="0100000">388</cbc:InvoiceTypeCode>
    <cbc:DocumentCurrencyCode>SAR</cbc:DocumentCurrencyCode>
    <cbc:TaxCurrencyCode>SAR</cbc:TaxCurrencyCode>
    <cac:AdditionalDocumentReference>
        <cbc:ID>ICV</cbc:ID>
        <cbc:UUID>$icv</cbc:UUID>
    </cac:AdditionalDocumentReference>
    <cac:AdditionalDocumentReference>
        <cbc:ID>PIH</cbc:ID>
        <cac:Attachment>
            <cbc:EmbeddedDocumentBinaryObject mimeCode="text/plain">$prevHash</cbc:EmbeddedDocumentBinaryObject>
        </cac:Attachment>
    </cac:AdditionalDocumentReference>
    <!-- هنا يتم إضافة InvoiceLine و TaxSubtotal و LegalMonetaryTotal ... -->
    <cac:LegalMonetaryTotal>
        <cbc:TaxExclusiveAmount currencyID="SAR">${order.netTotalPrice}</cbc:TaxExclusiveAmount>
        <cbc:TaxInclusiveAmount currencyID="SAR">${order.finalAmount}</cbc:TaxInclusiveAmount>
        <cbc:PayableAmount currencyID="SAR">${order.finalAmount}</cbc:PayableAmount>
    </cac:LegalMonetaryTotal>
</Invoice>''';

    // 2. تنظيف ملف الـ XML (Canonicalization C14N)
    // حسب ZATCA: يجب إزالة التوقيع (Signature) والـ QR Code (إن وجدتا قبل هذه المرحلة)
    // ثم يجب عمل C14N (وهو إزالة المسافات الزائدة وضبط تنسيق الـ XML).
    // هنا نستخدم تنظيف مبسط للحصول على النص الدقيق للتشفير:
    String canonicalizedXml = _simpleCanonicalize(xmlContent);

    // 3. تطبيق التشفير SHA-256
    List<int> bytes = utf8.encode(canonicalizedXml);
    Digest digest = sha256.convert(bytes);

    // 4. تحويل الناتج إلى Base64 (كما تطلب الهيئة)
    String base64Hash = base64.encode(digest.bytes);

    return base64Hash;
  }

  /// دالة مبسطة جداً لـ Canonicalization (C14N)
  /// انتبه: في الإنتاج (Production) يجب استخدام مكتبة لمعالجة الـ Canonical XML بشكل دقيق.
  static String _simpleCanonicalize(String xml) {
    // إزالة السطر الخاص بـ xml version (حسب شروط ZATCA للهاش)
    xml = xml.replaceAll(RegExp(r'<\\?xml.*?\\?>\\s*'), '');
    // إزالة المسافات بین التاجز للحصول على السلسلة النقية
    return xml.replaceAll(RegExp(r'>\\s+<'), '><').trim();
  }
}
