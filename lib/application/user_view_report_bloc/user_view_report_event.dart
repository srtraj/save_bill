part of 'user_view_report_bloc.dart';

@freezed
class UserViewReportEvent with _$UserViewReportEvent {
  const factory UserViewReportEvent.resetFilter() = ResetFilter;
}