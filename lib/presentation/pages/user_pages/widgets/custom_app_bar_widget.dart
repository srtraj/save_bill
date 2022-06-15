import 'package:flutter/material.dart';
import 'package:save_bill/core/meta_assets.dart';

import 'view_report_card.dart';

class UserAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const UserAppBarWidget({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 100);
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
        preferredSize: const Size.fromHeight(100),
        child: Container(
          color: Colors.white,
          height: 100,
          child: Stack(
            children: [
              ColoredBox(
                color: Theme.of(context).primaryColor,
                child: const SizedBox(
                  height: 50,
                  width: double.infinity,
                ),
              ),
              const ViewReportCard(),
            ],
          ),
        ),
      ),
    );
  }
}
