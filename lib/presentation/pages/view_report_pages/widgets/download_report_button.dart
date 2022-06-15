import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_file/open_file.dart';
import 'package:save_bill/presentation/functions.dart';
import 'package:save_bill/presentation/pages/view_report_pages/pdf_view_report.dart';
import 'package:save_bill/presentation/widgets/icon_label_widget.dart';

class DownloadReportButton extends StatelessWidget {
  const DownloadReportButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: InkWell(
        onTap: () async {
          final extDir = await getDowloadPath();
          final fileName =
              "${DateTime.now().toString().replaceAll(RegExp(r'[-: .]'), "")}_report.pdf";
          final file = File('$extDir/$fileName');
          await file.writeAsBytes(await PDFViewReport.generate());
          await OpenFile.open(file.path);
        },
        child: const SizedBox(
          height: 45,
          width: double.infinity,
          child: Center(
              child: IconLabelWidget(
            axis: Axis.horizontal,
            icon: Icon(
              FontAwesomeIcons.filePdf,
              color: Colors.white,
            ),
            label: Text(
              'DOWNLOAD',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          )),
        ),
      ),
    );
  }
}
