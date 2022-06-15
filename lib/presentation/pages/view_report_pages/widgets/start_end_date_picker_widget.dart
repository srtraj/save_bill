import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:save_bill/application/user_view_report_bloc/user_view_report_bloc.dart';
import 'package:save_bill/presentation/widgets/icon_label_widget.dart';

class StartEndDatePicker extends StatefulWidget {
  const StartEndDatePicker({
    Key? key,
  }) : super(key: key);

  @override
  State<StartEndDatePicker> createState() => _StartEndDatePickerState();
}

class _StartEndDatePickerState extends State<StartEndDatePicker> {
  late DateTime _todayDate;
  late DateTime _firstDate;
  late DateTime _startDate;
  late DateTime _lastDate;

  @override
  void initState() {
    _todayDate = DateTime.now();
    _firstDate = DateTime(2022, 2, 22);
    _startDate = _firstDate;
    _lastDate = _todayDate;
    super.initState();
  }

  _selectDate({required BuildContext context, bool isStart = true}) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isStart ? _startDate : _lastDate,
      firstDate: isStart ? _firstDate : _startDate,
      lastDate: isStart ? _lastDate : _todayDate,
    );
    if (picked != null) {
      if (isStart) {
        setState(() {
          _startDate = picked;
        });
      }
      if (!isStart) {
        setState(() {
          _lastDate = picked;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserViewReportBloc, UserViewReportState>(
      listener: (context, state) {
        if (state.resetFilter) {
          setState(() {
            _startDate = _firstDate;
            _lastDate = _todayDate;
          });
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    _selectDate(context: context);
                  },
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "START DATE",
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        const SizedBox(height: 5),
                        IconLabelWidget(
                          axis: Axis.horizontal,
                          icon: Icon(
                            Icons.today,
                            color: Colors.blue[900],
                          ),
                          label: Text(
                            DateFormat('dd MMMM yy').format(
                              _startDate,
                            ),
                            style: TextStyle(
                              color: Colors.blue[900],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    _selectDate(context: context, isStart: false);
                  },
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "LAST DATE",
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        const SizedBox(height: 5),
                        IconLabelWidget(
                          axis: Axis.horizontal,
                          icon: Icon(
                            Icons.event,
                            color: Colors.blue[900],
                          ),
                          label: Text(
                            DateFormat('dd MMMM yy').format(_lastDate),
                            style: TextStyle(
                              color: Colors.blue[900],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
