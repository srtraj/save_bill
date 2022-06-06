import 'package:flutter/material.dart';
import 'package:save_bill/domain/models/user_model/user_model.dart';
import 'package:save_bill/routes/route_arguments.dart';
import 'package:save_bill/routes/routes.dart';

class UserListTile extends StatelessWidget {
  final UserModel user;
  const UserListTile({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.billList,
            arguments: BillListArgument(clientId: "aa01"));
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 0.04),
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text(
              getFirstLetterFromName(user.name),
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
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

  getFirstLetterFromName(String name) {
    List<String> ls = name.split(" ");
    return ls.map((String e) => e[0]).join();
  }
}
