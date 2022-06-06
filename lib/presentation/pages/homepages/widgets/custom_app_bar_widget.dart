import 'package:flutter/material.dart';
import 'package:save_bill/core/meta_assets.dart';
import 'package:save_bill/presentation/pages/homepages/widgets/view_report_card.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wt = MediaQuery.of(context).size.width / 100;
    return SizedBox(
      height: 200,
      width: wt * 100,
      child: Stack(
        children: [
          ColoredBox(
            color: Theme.of(context).primaryColor,
            child: const SizedBox(
              height: 150,
              width: double.infinity,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(Assets.assetsImagesDummyProfile),
                  ),
                ),
                Text("Sharathraj")
              ],
            ),
          ),
          const ViewReportCard(),
        ],
      ),
    );
  }
}
