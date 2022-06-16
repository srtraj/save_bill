import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save_bill/application/customer_bloc/customer_list_bloc.dart';
import 'package:save_bill/domain/models/customer_model/customer_model.dart';

import 'customer_list_tile.dart';
import 'customer_search_card.dart';

class CustomerListWidget extends StatefulWidget {
  const CustomerListWidget({Key? key}) : super(key: key);

  @override
  State<CustomerListWidget> createState() => _CustomerListWidgetState();
}

class _CustomerListWidgetState extends State<CustomerListWidget> {
  @override
  void initState() {
    context
        .read<CustomerListBloc>()
        .add(const CustomerListEvent.loadUser(phoneNumber: "8157898849"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerListBloc, CustomerListState>(
      builder: (context, state) {
        if (!state.isLoading) {
          List<CustomerDataModel> list = state.data;
          return Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const CustomerSearchCardWidget(),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return CustomerListTileWidget(
                        user: list[index],
                      );
                    }),
              ),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
