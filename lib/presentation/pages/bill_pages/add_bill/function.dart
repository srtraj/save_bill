import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:save_bill/presentation/widgets/icon_label_widget.dart';
import 'package:save_bill/routes/routes.dart';

openAttachBillModal({
  required BuildContext context,
  required Function picImage,
  required Function captureImage,
  required Function pickPdf,
}) {
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
                      onTap: () async {
                        picImage();
                        Navigator.pop(context);
                      },
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
                      onTap: () async {
                        captureImage();
                        Navigator.pop(context);
                      },
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
                      onTap: () {
                        pickPdf();
                        Navigator.pop(context);
                      },
                      child: IconLabelWidget(
                          icon: Icon(
                            FontAwesomeIcons.folderOpen,
                            size: wt * 12,
                            color: const Color(0xFFF9BA04),
                          ),
                          label: "File"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
