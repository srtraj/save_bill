import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save_bill/application/contact_list_cubit/contact_list_cubit.dart';
import 'package:save_bill/domain/models/contact_model/contact_model.dart';
import 'package:save_bill/presentation/functions.dart';

class ConatctListWidget extends StatelessWidget {
  const ConatctListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactListCubit, ContactListState>(
      builder: (context, state) {
        return ListView.builder(
            itemCount: state.data.length,
            itemBuilder: (BuildContext context, int index) {
              ContactModel contact = state.data[index];

              return ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image: contact.photo != null
                        ? DecorationImage(
                            image: MemoryImage(contact.photo!),
                            fit: BoxFit.cover,
                          )
                        : null,
                    borderRadius:
                        const BorderRadius.all(Radius.circular(120.0)),
                  ),
                  child: contact.photo == null
                      ? Center(
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              getFirstLetterFromName(contact.name),
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      : null,
                ),
                title: Text(contact.name),
                subtitle: Text(contact.phones),
              );
            });
      },
    );
  }
}
