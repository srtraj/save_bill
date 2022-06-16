import 'package:flutter/material.dart';
import 'package:save_bill/core/meta_colors.dart';
import 'package:save_bill/routes/routes.dart';

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
              const SizedBox(
                height: 15,
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'PENDING BILL  :   ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: '₹100',
                      style: TextStyle(
                          fontSize: 18,
                          color: MetaColor.recievedColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Divider(),
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, Routes.viewReportPage),
                child: Text(
                  "View Report  ->",
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: Colors.blue[900],
                      ),
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
