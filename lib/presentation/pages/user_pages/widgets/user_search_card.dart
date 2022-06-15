import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:save_bill/application/user_bloc/user_list_bloc.dart';

class UserSearchCardWidget extends StatefulWidget {
  const UserSearchCardWidget({Key? key}) : super(key: key);

  @override
  State<UserSearchCardWidget> createState() => _UserSearchCardWidgetState();
}

class _UserSearchCardWidgetState extends State<UserSearchCardWidget> {
  late bool _isTap;
  late TextEditingController _cnt;

  @override
  void initState() {
    _isTap = false;
    _cnt = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _cnt.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Visibility(
            visible: _isTap,
            child: InkWell(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(Icons.close),
              ),
            ),
          ),
          Flexible(
            child: SizedBox(
              height: 40,
              child: Focus(
                onFocusChange: (hasFocus) {
                  if (hasFocus && !_isTap) {
                    _isTap = true;
                    setState(() {});
                  }
                  if (!hasFocus && _isTap) {
                    _isTap = false;
                    _cnt.clear();
                    context
                        .read<UserListBloc>()
                        .add(const UserListEvent.filterUser(searchKey: ""));
                    setState(() {});
                  }
                },
                child: TextField(
                  controller: _cnt,
                  onChanged: (value) => context
                      .read<UserListBloc>()
                      .add(UserListEvent.filterUser(searchKey: value)),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Search Customer",
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 15),
                      prefixIcon: _isTap ? null : const Icon(Icons.search)),
                ),
              ),
            ),
          ),
          Visibility(
            visible: !_isTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: () {},
                child: const FaIcon(
                  FontAwesomeIcons.filePdf,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
