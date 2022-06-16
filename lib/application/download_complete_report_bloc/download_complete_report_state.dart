part of 'download_complete_report_cubit.dart';

@freezed
class DownloadCompleteReportState with _$DownloadCompleteReportState {
  const factory DownloadCompleteReportState.initial() = _Initial;
  const factory DownloadCompleteReportState.loading() =
      DownloadCompleteReportLoading;
  const factory DownloadCompleteReportState.loaded() =
      DownloadCompleteReportLoaded;
  const factory DownloadCompleteReportState.error() =
      DownloadCompleteReportError;
}
