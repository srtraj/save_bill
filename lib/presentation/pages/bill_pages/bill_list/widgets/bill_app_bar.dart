import 'package:flutter/material.dart';
import 'package:save_bill/core/meta_assets.dart';
import 'package:save_bill/core/meta_colors.dart';

class BillAppBar extends StatelessWidget with PreferredSizeWidget {
  const BillAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 75);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundImage: AssetImage(Assets.assetsImagesDummyProfile),
        ),
      ),
      title: const Text("Sharathraj"),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
              width: MediaQuery.of(context).size.width * .9,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 15,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      "you will get",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "₹ 100",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: MetaColor.getColor,
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
