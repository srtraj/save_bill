import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save_bill/application/user_bloc/user_list_bloc.dart';
import 'package:save_bill/domain/models/user_model/user_model.dart';

import 'user_list_tile.dart';
import 'user_search_card.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {

  @override
  void initState() {
    context
        .read<UserListBloc>()
        .add(const UserListEvent.loadUser(phoneNumber: "8157898849"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserListBloc, UserListState>(
      builder: (context, state) {
        if (!state.isLoading) {
          List<UserModel> list = state.data;
          return Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const UserSearchCardWidget(),
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
                      return UserListTile(
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
