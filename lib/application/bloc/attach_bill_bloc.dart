
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attach_bill_event.dart';
part 'attach_bill_state.dart';
part 'attach_bill_bloc.freezed.dart';

class AttachBillBloc extends Bloc<AttachBillEvent, AttachBillState> {
  AttachBillBloc() : super(_Initial()) {
    on<AttachBillEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
