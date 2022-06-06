import 'package:flutter/material.dart';

class ViewReportCard extends StatelessWidget {
  const ViewReportCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wt = MediaQuery.of(context).size.width / 100;
    return Positioned(
      bottom: 0,
      left: wt * 5,
      child: SizedBox(
        height: 100,
        width: wt * 90,
        child: Card(
          color: Theme.of(context).scaffoldBackgroundColor,
          elevation: 10,
          child: Column(
            children: [
              const Spacer(),
              const Divider(),
              InkWell(
                onTap: () {},
                child: Text(
                  "View Report  ->",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              const SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
