import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save_bill/application/attach_bill_bloc/attach_bill_bloc.dart';

class AttachChipsList extends StatelessWidget {
  const AttachChipsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AttachBillBloc, AttachBillState>(
        builder: (context, state) {
      return Align(
        alignment: Alignment.centerRight,
        child: Wrap(
          spacing: 6.0,
          runSpacing: 6.0,
          children: List.generate(
            state.data.length,
            (index) => Chip(
              onDeleted: () {},
              deleteIcon: const Icon(
                Icons.clear,
                size: 17,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              label: Text(state.data[index].path.split('/').last),
              elevation: 3,
              shadowColor: Colors.grey[60],
              padding: const EdgeInsets.all(8.0),
            ),
          ),
        ),
      );
    });
  }
}
