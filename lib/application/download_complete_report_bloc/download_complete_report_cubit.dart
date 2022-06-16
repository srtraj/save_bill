import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_file/open_file.dart';
import 'package:save_bill/presentation/functions.dart';
import 'package:save_bill/presentation/pages/view_report_pages/pdf_view_report.dart';

part 'download_complete_report_state.dart';
part 'download_complete_report_cubit.freezed.dart';

class DownloadCompleteReportCubit extends Cubit<DownloadCompleteReportState> {
  DownloadCompleteReportCubit()
      : super(const DownloadCompleteReportState.initial());

  Future<void> download() async {
    try {
      emit(const DownloadCompleteReportState.loading());
         final extDir = await getDowloadPath();
          final fileName =
              "${uniqueIdFromDate()}_report.pdf";
          final file = File('$extDir/$fileName');
          await file.writeAsBytes(await PDFViewReport.generate());
          await OpenFile.open(file.path);
      emit(const DownloadCompleteReportState.loaded());
    } on Exception catch (e) {
      emit(const DownloadCompleteReportState.error());
    }
  }
}
