import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:save_bill/application/download_complete_report_bloc/download_complete_report_cubit.dart';
import 'package:save_bill/presentation/widgets/icon_label_widget.dart';
class DownloadReportButton extends StatelessWidget {
  const DownloadReportButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: InkWell(
        onTap: () async {
         context.read<DownloadCompleteReportCubit>().download();
        },
        child: const SizedBox(
          height: 45,
          width: double.infinity,
          child: Center(
              child: IconLabelWidget(
            axis: Axis.horizontal,
            icon: Icon(
              FontAwesomeIcons.filePdf,
              color: Colors.white,
            ),
            label: Text(
              'DOWNLOAD',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          )),
        ),
      ),
    );
  }
}
