import 'package:flutter/material.dart';
import 'dart:io';

import 'package:printing/printing.dart';
import 'package:save_bill/presentation/pages/view_report_pages/pdf_view_report.dart';

class PdfPage extends StatefulWidget {
  @override
  _PdfPageState createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  File? filePath;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Pdf page"),
          centerTitle: true,
        ),
        body: PdfPreview(
          build: (format) => PDFViewReport.generate(),
        ),
      );
}
