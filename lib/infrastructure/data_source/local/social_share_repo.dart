import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:save_bill/domain/i_repo/i_social_share_repo.dart';
import 'package:save_bill/presentation/functions.dart';
import 'package:save_bill/presentation/pages/bill_pages/bill_list/widgets/whatsapp_reminder_bill_design.dart';
import 'package:screenshot/screenshot.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_share2/whatsapp_share2.dart';

class SocialShareRepo implements ISocialShareRepo {
  @override
  Future<Either<Failure, void>> sendWhatsappReminder(
      {required String mobNumber,
      required String name,
      required String price}) async {
    try {
      final controller = ScreenshotController();
      final bytes = await controller
          .captureFromWidget(const WhatsappReminderBillDesign());
      final directory = await getExternalStorageDirectory();
      final savePath = "${directory!.path}/sent/$mobNumber";
      final fileName =
          "${uniqueIdFromDate()}_reminder.jpg";
      if (!await Directory(savePath).exists()) {
        await Directory(savePath).create(recursive: true);
      }
      File filePath = await File("$savePath/$fileName").writeAsBytes(bytes);

      await WhatsappShare.shareFile(
        text:
            "Dear Sir/Madam,\nYour payment of ₹$price is pending at $name($mobNumber)\n\nClick here: khata.pe/t/XmJzzGR7oSR?s=pr&m=w to view the details and make the payment.\n\n\nIf the link is not clickable, please save this contact and try again.",
        phone: mobNumber,
        filePath: [filePath.path],
      );
      return right(null);
    } on Exception catch (_) {
      return const Left(Failure.internalFailure());
    }
  }

  @override
  Future<Either<Failure, void>> sendSmsReminder({
    required String mobNumber,
    required String name,
    required String price,
  }) async {
    try {
      String msg =
          "Dear Sir/Madam,\nYour payment of ₹$price is pending at $name($mobNumber)\n\nClick here: khata.pe/t/XmJzzGR7oSR?s=pr&m=w to view the details and make the payment.\n\n\nIf the link is not clickable, please save this contact and try again.";
      if (Platform.isAndroid) {
        final uri = 'sms:+$mobNumber?body=$msg';
        await launchUrl(Uri.parse(uri));
      } else if (Platform.isIOS) {
        // iOS
        final uri = 'sms:00$mobNumber&body=$msg';
        await launchUrl(Uri.parse(uri));
      }
      return right(null);
    } on Exception catch (_) {
      return const Left(Failure.internalFailure());
    }
  }
}
