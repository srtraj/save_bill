import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save_bill/application/user_view_report_bloc/user_view_report_bloc.dart';

class ReportSearchEntriesWidget extends StatefulWidget {
  const ReportSearchEntriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ReportSearchEntriesWidget> createState() =>
      _ReportSearchEntriesWidgetState();
}

class _ReportSearchEntriesWidgetState extends State<ReportSearchEntriesWidget> {
  late TextEditingController _cntSearch;
  late SingleValueDropDownController _cntCategory;
  final List<DropDownValueModel> _categories = const [
    DropDownValueModel(
      name: "ALL",
      value: '0',
    ),
    DropDownValueModel(
       name: "This Month",
      value: '1',
    ),
    DropDownValueModel(
      name: "Single Day",
      value: '2',
    ),
    DropDownValueModel(
      name: "Last Week",
      value: '3',
    ),
    DropDownValueModel(
      name: "Last Month",
      value: 'all',
    ),
  ];
  @override
  void initState() {
    _cntSearch = TextEditingController();
    _cntCategory = SingleValueDropDownController(
      data:  _categories[0]
    );
    super.initState();
  }

  @override
  void dispose() {
    _cntSearch.dispose();
    _cntCategory.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserViewReportBloc, UserViewReportState>(
      listener: (context, state) {
        if (state.resetFilter) {
          setState(() {
            _cntSearch.clear();
            _cntCategory.setDropDown(
              _categories[0],
            );
            setState(() {});
          });
        }
      },
      child: Container(
        height: 43,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
        ),
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _cntSearch,
                  style: const TextStyle(fontSize: 16),
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 10, left: 10),
                      hintText: "Search entries..",
                      hintStyle: TextStyle(fontSize: 14),
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
              Container(
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.grey[200]!,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
                ),
                child: DropDownTextField(
                  singleController: _cntCategory,
                  textStyle: const TextStyle(fontSize: 14),
                  clearOption: false,
                  textFieldDecoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 12, left: 10),
                  ),
                  dropDownList:_categories,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
