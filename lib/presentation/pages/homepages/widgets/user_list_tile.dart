import 'package:flutter/material.dart';
import 'package:save_bill/domain/models/user_model/user_model.dart';
import 'package:save_bill/presentation/functions.dart';
import 'package:save_bill/presentation/widgets/first_letter_circular_avatar.dart';
import 'package:save_bill/routes/route_arguments.dart';
import 'package:save_bill/routes/routes.dart';

class UserListTile extends StatelessWidget {
  final UserModel user;
  const UserListTile({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.billHome,
            arguments: BillListArgument(clientId: "aa01"));
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 0.04),
        ),
        child: ListTile(
          leading: FirstLetterCircularAvatar(name: user.name),
          title: Text(
            user.name,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          trailing: Text(
            "₹ ${user.price}",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.green),
          ),
        ),
      ),
    );
  }
}
