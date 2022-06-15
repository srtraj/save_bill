import 'dart:typed_data';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';
import 'package:save_bill/core/meta_assets.dart';
import 'package:save_bill/core/meta_strings.dart';

class PDFViewReport {
  static Future<Uint8List> generate() async {
    final pdf = pw.Document(version: PdfVersion.pdf_1_5, compress: true);
    var font = await PdfGoogleFonts.robotoBold();

    final playstoreImage =
        await imageFromAssetBundle(Assets.assetsImagesPlaystore);
    pdf.addPage(
      MultiPage(
        margin: pw.EdgeInsets.zero,
        header: (context) => buildHeader(),
        build: (context) => [
          pw.SizedBox(height: 0.8 * PdfPageFormat.cm),
          buildTitle(),
          pw.SizedBox(height: 0.8 * PdfPageFormat.cm),
          buildBalanceBox(font),
          pw.SizedBox(height: 0.8 * PdfPageFormat.cm),
          buildEntriesTable(),
          pw.SizedBox(height: 0.2 * PdfPageFormat.cm),
          buildTotal(),
          pw.SizedBox(height: 0.2 * PdfPageFormat.cm),
          buildGeneratedInfo(),
        ],
        footer: (context) => buildFooter(playstoreImage),
      ),
    );

    return pdf.save();
  }

  static Widget buildHeader() => pw.Container(
        color: PdfColor.fromRYB(0, 0, 1),
        child: pw.Padding(
          padding: const pw.EdgeInsets.symmetric(
            vertical: 1 * PdfPageFormat.cm,
            horizontal: 1 * PdfPageFormat.cm,
          ),
          child: pw.Row(
            children: [
              pw.Text("Sharath",
                  style: pw.TextStyle(
                      color: PdfColors.white,
                      fontSize: 20,
                      fontWeight: pw.FontWeight.bold)),
              pw.Spacer(),
              pw.Text(MetaString.appName,
                  style: pw.TextStyle(
                      color: PdfColors.white,
                      fontSize: 20,
                      fontWeight: pw.FontWeight.bold)),
            ],
          ),
        ),
      );
  static Widget buildTitle() => pw.SizedBox(
      width: double.infinity,
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.center,
        children: [
          pw.Text(
            'Account Statement',
            style: TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold),
          ),
          pw.SizedBox(height: 0.1 * PdfPageFormat.cm),
          Text("30 May 2022 - 09 Jun 2022"),
        ],
      ));

  static Widget buildBalanceBox(font) => pw.Padding(
      padding:
          const pw.EdgeInsets.symmetric(horizontal: 1.0 * PdfPageFormat.cm),
      child: pw.Container(
        decoration: pw.BoxDecoration(
          border: pw.Border.all(
            color: PdfColors.black,
          ),
        ),
        padding: const pw.EdgeInsets.symmetric(
            vertical: 0.5 * PdfPageFormat.cm,
            horizontal: 0.5 * PdfPageFormat.cm),
        child: pw.Row(
          children: [
            pw.Expanded(
              child: pw.Align(
                alignment: pw.Alignment.center,
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text("Total Debit(-)"),
                    pw.Text("₹ 60007", style: TextStyle(font: font)),
                  ],
                ),
              ),
            ),
            pw.Expanded(
              child: pw.Align(
                alignment: pw.Alignment.center,
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text("Total Credit(+)"),
                    pw.Text("₹ 60007", style: TextStyle(font: font)),
                  ],
                ),
              ),
            ),
            pw.Expanded(
              child: pw.Align(
                alignment: pw.Alignment.center,
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text("Net Balance"),
                    pw.Text("₹ 60007",
                        style: TextStyle(
                            font: font,
                            color: PdfColors.red,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ));
  static Widget buildEntriesTable() {
    final headers = ['Date', 'Name', 'Details', 'Debit(-)', 'Credit(+)'];
    final data = List.generate(
        50,
        (index) => [
              DateFormat('dd MMMM yy').format(
                DateTime.now(),
              ),
              "Name$index",
              '',
              '${index * 5}',
              '${index * 7}',
            ]);

    return pw.Padding(
        padding: const pw.EdgeInsets.symmetric(
            vertical: 0.5 * PdfPageFormat.cm,
            horizontal: 1.0 * PdfPageFormat.cm),
        child: Table.fromTextArray(
          headers: headers,
          data: data,
          border: TableBorder.all(color: PdfColors.grey300),
          headerStyle: TextStyle(fontWeight: FontWeight.bold),
          headerDecoration: const BoxDecoration(color: PdfColors.blue50),
          cellPadding: const pw.EdgeInsets.all(0.3 * PdfPageFormat.cm),
          cellHeight: 30,
          cellAlignments: {
            0: Alignment.centerLeft,
            1: Alignment.centerLeft,
            2: Alignment.centerLeft,
            3: Alignment.centerRight,
            4: Alignment.centerRight,
          },
          columnWidths: {
            0: const pw.FlexColumnWidth(2.0),
            1: const pw.FlexColumnWidth(2.0),
            2: const pw.FlexColumnWidth(3.0),
            3: const pw.FlexColumnWidth(2.0),
            4: const pw.FlexColumnWidth(2.0),
          },
        ));
  }

  static Widget buildTotal() {
    return pw.Padding(
      padding: const pw.EdgeInsets.symmetric(horizontal: 1 * PdfPageFormat.cm),
      child: Container(
        padding: const pw.EdgeInsets.all(0.3 * PdfPageFormat.cm),
        decoration:
            pw.BoxDecoration(border: pw.Border.all(color: PdfColors.blue200)),
        child: pw.Row(
          children: [
            pw.Expanded(flex: 7, child: Text("Grand Total")),
            pw.Expanded(
                flex: 2,
                child: pw.Align(
                  alignment: pw.Alignment.centerRight,
                  child: pw.Text("6000.00"),
                )),
            pw.Expanded(
                flex: 2,
                child: pw.Align(
                  alignment: pw.Alignment.centerRight,
                  child: pw.Text("6000.00"),
                )),
          ],
        ),
      ),
    );
  }

  static Widget buildGeneratedInfo() => pw.Padding(
        padding:
            const pw.EdgeInsets.symmetric(horizontal: 1 * PdfPageFormat.cm),
        child: pw.Text(
            "Report Generated : ${DateFormat('dd MMMM yy | hh:mm aaa').format(DateTime.now())}",
            style: const pw.TextStyle(color: PdfColors.grey600)),
      );

  static Widget buildFooter(image) => pw.Container(
        color: PdfColor.fromRYB(0, 0, 1),
        child: pw.Padding(
          padding: const pw.EdgeInsets.symmetric(
            vertical: 0.3 * PdfPageFormat.cm,
            horizontal: 1 * PdfPageFormat.cm,
          ),
          child: pw.Row(
            children: [
              pw.Text(
                "Start using Save bill Now ",
                style: const pw.TextStyle(
                  color: PdfColors.white,
                  fontSize: 13,
                ),
              ),
              pw.Image(
                image,
                width: 5 * PdfPageFormat.cm,
              ),
              pw.Spacer(),
              pw.Text(" Help: +91-8157898849",
                  style:
                      const pw.TextStyle(color: PdfColors.white, fontSize: 15)),
            ],
          ),
        ),
      );
}
