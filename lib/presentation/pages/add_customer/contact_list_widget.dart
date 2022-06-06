import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save_bill/application/contact_list_cubit/contact_list_cubit.dart';

class ConatctListWidget extends StatelessWidget {
  const ConatctListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactListCubit, ContactListState>(
      builder: (context, state) {
        return ListView.builder(
            itemCount: state.data.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 71, 84, 95),
                  backgroundImage: state.data[index].photo!=null?MemoryImage(state.data[index].photo!):null,
                ),
                title: Text(state.data[index].name),
                subtitle: Text(state.data[index].phones),
              );
            });
      },
    );
  }
}
