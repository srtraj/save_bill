import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:save_bill/application/customer_bloc/customer_list_bloc.dart';
import 'package:save_bill/application/download_complete_report_bloc/download_complete_report_cubit.dart';

import 'package:save_bill/presentation/functions.dart';

class CustomerSearchCardWidget extends StatefulWidget {
  const CustomerSearchCardWidget({Key? key}) : super(key: key);

  @override
  State<CustomerSearchCardWidget> createState() =>
      _CustomerSearchCardWidgetState();
}

class _CustomerSearchCardWidgetState extends State<CustomerSearchCardWidget> {
  late bool _isTap;
  late TextEditingController _cnt;

  @override
  void initState() {
    _isTap = false;
    _cnt = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _cnt.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<DownloadCompleteReportCubit,
        DownloadCompleteReportState>(
      listener: (context, state) {
        if (state is DownloadCompleteReportLoading) {
          showLoaderDialog(context);
        }
        if (state is DownloadCompleteReportLoaded) {
          Navigator.of(context).pop();
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [
            Visibility(
              visible: _isTap,
              child: InkWell(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Icon(Icons.close),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: 40,
                child: Focus(
                  onFocusChange: (hasFocus) {
                    if (hasFocus && !_isTap) {
                      _isTap = true;
                      setState(() {});
                    }
                    if (!hasFocus && _isTap) {
                      _isTap = false;
                      _cnt.clear();
                      context.read<CustomerListBloc>().add(
                          const CustomerListEvent.filterUser(searchKey: ""));
                      setState(() {});
                    }
                  },
                  child: TextField(
                    controller: _cnt,
                    onChanged: (value) => context
                        .read<CustomerListBloc>()
                        .add(CustomerListEvent.filterUser(searchKey: value)),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Search Customer",
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 15),
                        prefixIcon: _isTap ? null : const Icon(Icons.search)),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: !_isTap,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: InkWell(
                  onTap: () =>
                      context.read<DownloadCompleteReportCubit>().download(),
                  child: const FaIcon(
                    FontAwesomeIcons.filePdf,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
