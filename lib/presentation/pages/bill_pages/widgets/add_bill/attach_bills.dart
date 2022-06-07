import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:save_bill/presentation/widgets/icon_label_widget.dart';

class AttachBillsWidget extends StatelessWidget {
  const AttachBillsWidget({
    Key? key,
    required this.mainColor,
  }) : super(key: key);

  final Color mainColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>_openModal(context),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Row(
            children: [
              Icon(
                Icons.photo_camera,
                color: mainColor,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text("Attach bills"),
            ],
          ),
        ),
      ),
    );
  }
}

_openModal(context) {
  showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        final wt = MediaQuery.of(context).size.width / 100;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: wt * 5, vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select bill",
                style: Theme.of(context).textTheme.headline6,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: IconLabelWidget(
                          icon: Icon(
                            Icons.image,
                            size: wt * 12,
                            color: Colors.red,
                          ),
                          label: "Images"),
                    ),
                    SizedBox(
                      width: wt * 10,
                    ),
                    GestureDetector(
                            onTap: (){},
                      child: IconLabelWidget(
                          icon: Icon(
                            Icons.photo_camera,
                            size: wt * 12,
                          ),
                          label: "Camera"),
                    ),
                    SizedBox(
                      width: wt * 10,
                    ),
                    GestureDetector(
                            onTap: (){},
                      child: IconLabelWidget(
                          icon: Icon(
                            FontAwesomeIcons.filePdf,
                            size: wt * 12,
                            color: Colors.red,
                          ),
                          label: "Pdf"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
