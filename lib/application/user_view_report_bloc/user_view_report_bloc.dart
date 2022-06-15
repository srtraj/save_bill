import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:save_bill/domain/failures/failure.dart';

part 'user_view_report_event.dart';
part 'user_view_report_state.dart';
part 'user_view_report_bloc.freezed.dart';

class UserViewReportBloc extends Bloc<UserViewReportEvent, UserViewReportState> {
  UserViewReportBloc() : super( UserViewReportState.initial() ) {
    on<UserViewReportEvent>((event, emit) {
        if(event is ResetFilter){
           emit(state.copyWith(isLoading: true, resetFilter: true));
        }
    });
  }
}
