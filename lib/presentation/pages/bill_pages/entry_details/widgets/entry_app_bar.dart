import 'package:flutter/material.dart';
import 'package:save_bill/core/meta_assets.dart';
import 'package:save_bill/core/meta_colors.dart';
import 'package:save_bill/presentation/widgets/first_letter_circular_avatar.dart';
import 'package:save_bill/routes/route_arguments.dart';
import 'package:save_bill/routes/routes.dart';

class EntryAppBar extends StatelessWidget with PreferredSizeWidget {
  const EntryAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 200);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const Text("Entry Details"),
      bottom: PreferredSize(
        preferredSize: preferredSize,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            width: MediaQuery.of(context).size.width * .95,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(3)),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 5,
              ),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const FirstLetterCircularAvatar(name: "Jithesh"),
                    title: const Text("Jithesh"),
                    subtitle: Text(
                      "06 jun 22 - 05:55 PM",
                      style: Theme.of(context).textTheme.caption,
                    ),
                    trailing: Text("₹ 100",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: MetaColor.billColor,
                            fontWeight: FontWeight.bold)),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Text(
                          "Remaining Balance",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        const Spacer(),
                        Text(
                          "₹ 100",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  color: MetaColor.billColor,
                                  fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.addBill,
                            arguments: AddBillArguement());
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.edit,
                              color: Colors.blue,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "EDIT ENTRY",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
