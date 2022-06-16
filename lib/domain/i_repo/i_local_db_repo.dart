import 'package:save_bill/domain/models/user_details_model/user_details_model.dart';

abstract class ILocalDbRepo {
  setInitialPageInfo({required String pageInfo});
  String? getInitialPageInfo();
  setUserData({required UserDetailsModel data});
  UserDetailsModel? getUserData() ;
  void clearDb();
}
