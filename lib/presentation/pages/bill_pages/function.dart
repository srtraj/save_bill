import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:save_bill/presentation/pages/bill_pages/bill_list/widgets/whatsapp_reminder_bill_design.dart';
import 'package:save_bill/presentation/widgets/icon_label_widget.dart';
import 'package:screenshot/screenshot.dart';

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

Future sendMessageToWhatsapp(
    {required File image,
    required String mobNumber,
    required String msg}) async {
  await WhatsappShare.shareFile(
    text: msg,
    phone: mobNumber,
    filePath: [image.path],
  );
}

convertWidgetToImageAndSave({required String mobNumber}) async {
  final controller = ScreenshotController();
  final bytes =
      await controller.captureFromWidget(WhatsappReminderBillDesign());
  final directory = await getExternalStorageDirectory();
  final savePath = "${directory!.path}/sent/$mobNumber";
  final fileName =
      "${DateTime.now().toString().replaceAll(RegExp(r'[-: .]'), "")}_reminder.jpg";
  if (!await Directory(savePath).exists()) {
    await Directory(savePath).create(recursive: true);
  }
  File filePath = await File("$savePath/$fileName").writeAsBytes(bytes);
  sendMessageToWhatsapp(
      image: filePath, mobNumber: '918157898849', msg: 'reminder msg');
}
