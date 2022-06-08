import 'package:camera/camera.dart';

class BillListArgument {
  String clientId;
  BillListArgument({required this.clientId});
}

class OtpVerificationArgument {
  String mobile;
  OtpVerificationArgument({required this.mobile});
}
class CameraPreviewArguement {
  List<CameraDescription> camera;
  CameraPreviewArguement({required this.camera});
}

class AddBillArguement {
  bool isGave;
  AddBillArguement({this.isGave=false});
}