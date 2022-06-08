part of 'attach_bill_bloc.dart';

@freezed
class AttachBillEvent with _$AttachBillEvent {
  const factory AttachBillEvent.picImage() = _PicImage;
  const factory AttachBillEvent.captureImage(context) = _CaptureImage;
  const factory AttachBillEvent.picFile()=_PicFile;
  const factory AttachBillEvent.picPdf() = _PicPdf;
}
