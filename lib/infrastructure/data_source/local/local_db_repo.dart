import 'package:hive/hive.dart';
import 'package:save_bill/core/constants.dart';
import 'package:save_bill/domain/i_repo/i_local_db_repo.dart';
import 'package:save_bill/domain/models/user_details_model/user_details_model.dart';

class LocalDbRepo extends ILocalDbRepo {
  //  getItInstance<ILocalDbRepo>()
  final _localBox = Hive.box(MetaConstant.localDbName);
  @override
  String? getInitialPageInfo() => _localBox.get(_Keys.initialPage);

  @override
  setInitialPageInfo({required String pageInfo}) {
    _localBox.put(_Keys.initialPage, pageInfo);
  }

  @override
  UserDetailsModel? getUserData() => _localBox.get(_Keys.userData);

  @override
  setUserData({required UserDetailsModel data}) {
    _localBox.put(_Keys.userData, data);
  }

  @override
  void clearDb() {
    _localBox.clear();
  }
}

class _Keys {
  _Keys._();

  static const String initialPage = 'initialPage';
  static const String userData = 'userData';
}
