import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:save_bill/core/meta_assets.dart';
import 'package:save_bill/presentation/functions.dart';
import 'package:save_bill/presentation/widgets/icon_label_widget.dart';
import 'package:save_bill/routes/routes.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:whatsapp_share2/whatsapp_share2.dart';

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

openWhatsapp({required String number, required String message}) async {
  // var whatsappUrl =
  //     "whatsapp://send?phone=+91$number&text=${Uri.encodeComponent(message)}&&attachment=${File(Assets.assetsImagesDummyProfile)}";
  // print(whatsappUrl);
  // try {
  //   launchUrl(Uri.parse(whatsappUrl));
  // } catch (e) {
  //   //To handle error and display error message
  //   showTaost(message: "Unable to open whatsapp");
  // }

 
  // await WhatsappShare.shareFile(
  //   text: 'Whatsapp share text',
  //   phone: '918157898849',
  //   filePath: [file.path],
  // );
}
