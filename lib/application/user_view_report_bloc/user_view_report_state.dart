part of 'user_view_report_bloc.dart';

@freezed
class UserViewReportState with _$UserViewReportState {
  const factory UserViewReportState({
    required bool isLoading,
    required bool resetFilter,
    List? originalData,
    required List data,
    Failure? error,
  }) = _UserViewReportState;
  factory UserViewReportState.initial() => const UserViewReportState(
      isLoading: false, data: [], originalData: [], resetFilter :false);
}
