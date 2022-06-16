import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save_bill/application/contact_list_bloc/contact_list_bloc.dart';
import 'package:save_bill/domain/models/contact_model/contact_model.dart';
import 'package:save_bill/presentation/functions.dart';

class ConatctListWidget extends StatefulWidget {
  const ConatctListWidget(
      {Key? key, required this.mobController, required this.nameController})
      : super(key: key);
  final TextEditingController mobController;
  final TextEditingController nameController;

  @override
  State<ConatctListWidget> createState() => _ConatctListWidgetState();
}

class _ConatctListWidgetState extends State<ConatctListWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactListBloc, ContactListState>(
      builder: (context, state) {
        return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.data.length,
            itemBuilder: (BuildContext context, int index) {
              ContactModel contact = state.data[index];

              return ListTile(
                onTap: () {
                  FocusScope.of(context).unfocus();
                  setState(() {
                    final phoneNumber = contact.phones.replaceAll(" ", "");

                    widget.mobController.text =
                        phoneNumber.substring(phoneNumber.length - 10);
                    widget.nameController.text = contact.name;
                  });
                },
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
