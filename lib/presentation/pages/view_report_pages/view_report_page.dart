import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:save_bill/application/user_view_report_bloc/user_view_report_bloc.dart';
import 'package:save_bill/core/meta_colors.dart';
import 'package:save_bill/presentation/widgets/icon_label_widget.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'widgets/download_report_button.dart';
import 'widgets/entry_header_tile.dart';
import 'widgets/entry_list.dart';
import 'widgets/report_search_entries.dart';
import 'widgets/start_end_date_picker_widget.dart';

class ViewReportPage extends StatelessWidget {
  const ViewReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Report'),
        actions: [
          Center(
              child: InkWell(
            onTap: () => context
                .read<UserViewReportBloc>()
                .add(const UserViewReportEvent.resetFilter()),
            child: const Text("Reset Filters"),
          )),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: Scrollbar(
        child: CustomScrollView(slivers: [
          MultiSliver(
            children: [
              Container(
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      StartEndDatePicker(),
                      SizedBox(height: 15),
                      ReportSearchEntriesWidget(),
                    ],
                  ),
                ),
              ),
              const SliverPinnedHeader(
                child: EntryHeaderTileWidget(),
              ),
              const SliverClip(
                child: SliverToBoxAdapter(
                  child: EntryListWidget(),
                ),
              ),
            ],
          ),
        ]),
      ),
      bottomNavigationBar: const DownloadReportButton(),
    );
  }

  resetFilter() {}
}
