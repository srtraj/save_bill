import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save_bill/application/attach_bill_bloc/attach_bill_bloc.dart';
import 'package:save_bill/presentation/pages/bill_pages/function.dart';

class AttachBillsWidget extends StatelessWidget {
  const AttachBillsWidget({
    Key? key,
    required this.mainColor,
  }) : super(key: key);

  final Color mainColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => openAttachBillModal(
        context: context,
        picImage: () => context
            .read<AttachBillBloc>()
            .add(const AttachBillEvent.picImage()),
        captureImage: () => context
            .read<AttachBillBloc>()
            .add(AttachBillEvent.captureImage(context)),
        pickPdf: () => context
            .read<AttachBillBloc>()
            .add(const AttachBillEvent.picFile()),
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Row(
            children: [
              Icon(
                Icons.photo_camera,
                color: mainColor,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text("Attach bills"),
            ],
          ),
        ),
      ),
    );
  }
}
