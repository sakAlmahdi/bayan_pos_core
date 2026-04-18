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
    required List<OrderProductEntityV2Data> products,
    required int icv,
    required String prevHash,
    Map<String, String>? supplierInfo, // اسم المنشأة، الرقم الضريبي، العنوان
  }) {
    String issueDate = order.startDate?.toIso8601String().split('T')[0] ?? '';
    String issueTime =
        order.startDate?.toIso8601String().split('T')[1].substring(0, 8) ?? '';

    // تجهيز بيانات المورد (البائع)
    String sellerName = supplierInfo?['name'] ?? 'شركة بيان المحدودة';
    String sellerVat = supplierInfo?['vat'] ?? '300000000000003';
    String sellerAddr = supplierInfo?['address'] ?? 'الرياض، السعودية';

    // بناء أسطر الفاتورة (Invoice Lines)
    StringBuffer linesXml = StringBuffer();
    for (int i = 0; i < products.length; i++) {
      final p = products[i];
      linesXml.write('''
    <cac:InvoiceLine>
        <cbc:ID>${i + 1}</cbc:ID>
        <cbc:InvoicedQuantity unitCode="PCE">${p.quantity}</cbc:InvoicedQuantity>
        <cbc:LineExtensionAmount currencyID="SAR">${p.netTotalPriceExcludeTax?.toStringAsFixed(2)}</cbc:LineExtensionAmount>
        <cac:TaxTotal>
            <cbc:TaxAmount currencyID="SAR">${p.taxAmount?.toStringAsFixed(2)}</cbc:TaxAmount>
            <cbc:RoundingAmount currencyID="SAR">${p.finalAmount?.toStringAsFixed(2)}</cbc:RoundingAmount>
        </cac:TaxTotal>
        <cac:Item>
            <cbc:Name>${p.name}</cbc:Name>
            <cac:ClassifiedTaxCategory>
                <cbc:ID>S</cbc:ID>
                <cbc:Percent>15.00</cbc:Percent>
                <cac:TaxScheme>
                    <cbc:ID>VAT</cbc:ID>
                </cac:TaxScheme>
            </cac:ClassifiedTaxCategory>
        </cac:Item>
        <cac:Price>
            <cbc:PriceAmount currencyID="SAR">${p.unitPrice?.toStringAsFixed(2)}</cbc:PriceAmount>
        </cac:Price>
    </cac:InvoiceLine>''');
    }

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
    <cac:AccountingSupplierParty>
        <cac:Party>
            <cac:PartyIdentification>
                <cbc:ID schemeID="CRN">1010000000</cbc:ID>
            </cac:PartyIdentification>
            <cac:PartyName>
                <cbc:Name>$sellerName</cbc:Name>
            </cac:PartyName>
            <cac:PostalAddress>
                <cbc:StreetName>$sellerAddr</cbc:StreetName>
                <cbc:CityName>الرياض</cbc:CityName>
                <cbc:PostalZone>12345</cbc:PostalZone>
                <cac:Country>
                    <cbc:IdentificationCode>SA</cbc:IdentificationCode>
                </cac:Country>
            </cac:PostalAddress>
            <cac:PartyTaxScheme>
                <cbc:CompanyID>$sellerVat</cbc:CompanyID>
                <cac:TaxScheme>
                    <cbc:ID>VAT</cbc:ID>
                </cac:TaxScheme>
            </cac:PartyTaxScheme>
        </cac:Party>
    </cac:AccountingSupplierParty>
    <cac:AccountingCustomerParty>
        <cac:Party>
            <cac:PartyIdentification>
                <cbc:ID schemeID="NAT">2000000000</cbc:ID>
            </cac:PartyIdentification>
        </cac:Party>
    </cac:AccountingCustomerParty>
    <cac:TaxTotal>
        <cbc:TaxAmount currencyID="SAR">${order.taxAmount?.toStringAsFixed(2)}</cbc:TaxAmount>
        <cac:TaxSubtotal>
            <cbc:TaxableAmount currencyID="SAR">${order.taxableAmount?.toStringAsFixed(2)}</cbc:TaxableAmount>
            <cbc:TaxAmount currencyID="SAR">${order.taxAmount?.toStringAsFixed(2)}</cbc:TaxAmount>
            <cac:TaxCategory>
                <cbc:ID>S</cbc:ID>
                <cbc:Percent>15.00</cbc:Percent>
                <cac:TaxScheme>
                    <cbc:ID>VAT</cbc:ID>
                </cac:TaxScheme>
            </cac:TaxCategory>
        </cac:TaxSubtotal>
    </cac:TaxTotal>
    <cac:LegalMonetaryTotal>
        
        <cbc:TaxExclusiveAmount currencyID="SAR">${order.taxableAmount?.toStringAsFixed(2)}</cbc:TaxExclusiveAmount>
        <cbc:TaxInclusiveAmount currencyID="SAR">${order.finalAmount?.toStringAsFixed(2)}</cbc:TaxInclusiveAmount>
        <cbc:PayableAmount currencyID="SAR">${order.finalAmount?.toStringAsFixed(2)}</cbc:PayableAmount>
    </cac:LegalMonetaryTotal>
    ${linesXml.toString()}
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
