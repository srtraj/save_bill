import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save_bill/application/sms_reminder_bloc/sms_reminder_cubit.dart';
import 'package:save_bill/application/whatsapp_reminder_bloc/whatsapp_reminder_cubit.dart';
import 'package:save_bill/presentation/functions.dart';
import 'package:save_bill/presentation/widgets/icon_label_widget.dart';

class BillReportRemindBar extends StatelessWidget {
  const BillReportRemindBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Expanded(
              child: IconLabelWidget(
                  icon: Icon(
                    Icons.currency_rupee_rounded,
                    color: Colors.blue,
                  ),
                  label: Text("Report")),
            ),
            Expanded(
              child: BlocConsumer<WhatsappReminderCubit, WhatsappReminderState>(
                listener: (context, state) {
                  if (state is ErrorWhatsappReminder) {
                    showToast(
                        message: "Something went wrong,Please try again later");
                  }
                },
                builder: (context, state) {
                  if (state is LoadingWhatsappReminder) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return GestureDetector(
                    onTap: () async => context
                        .read<WhatsappReminderCubit>()
                        .sendWhatsappReminder(
                            mobNumber: "918157898849",
                            name: "Sharathraj",
                            price: "1500"),
                    child: const IconLabelWidget(
                        icon: Icon(
                          Icons.whatsapp,
                          color: Colors.green,
                        ),
                        label: Text("Remind")),
                  );
                },
              ),
            ),
            Expanded(
              child: BlocConsumer<SmsReminderCubit, SmsReminderState>(
                listener: (context, state) {
                  if (state is ErrorSmsReminder) {
                    showToast(
                        message: "Something went wrong,Please try again later");
                  }
                },
                builder: (context, state) {
                  if (state is LoadingSmsReminder) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return GestureDetector(
                    onTap: () async => context
                        .read<SmsReminderCubit>()
                        .sendSmsReminder(
                            mobNumber: "918157898849",
                            name: "Sharathraj",
                            price: "1500"),
                    child: const IconLabelWidget(
                        icon: Icon(
                          Icons.sms_outlined,
                          color: Colors.blue,
                        ),
                        label: Text("Sms")),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
