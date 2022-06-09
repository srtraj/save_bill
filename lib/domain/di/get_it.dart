import 'package:get_it/get_it.dart';
import 'package:save_bill/application/attach_bill_bloc/attach_bill_bloc.dart';
import 'package:save_bill/application/contact_list_bloc/contact_list_bloc.dart';
import 'package:save_bill/application/profile_upadte_bloc/profile_upload_bloc.dart';
import 'package:save_bill/application/sms_reminder/sms_reminder_cubit.dart';
import 'package:save_bill/application/user_bloc/user_list_bloc.dart';
import 'package:save_bill/application/whatsapp_reminder/whatsapp_reminder_cubit.dart';
import 'package:save_bill/domain/i_repo/i_contact_repo.dart';
import 'package:save_bill/domain/i_repo/i_file_repo.dart';
import 'package:save_bill/domain/i_repo/i_firebase_repo.dart';
import 'package:save_bill/domain/i_repo/i_social_share_repo.dart';
import 'package:save_bill/infrastructure/data_source/local/contact_repo.dart';
import 'package:save_bill/infrastructure/data_source/local/file_repo.dart';
import 'package:save_bill/infrastructure/data_source/local/social_share_repo.dart';
import 'package:save_bill/infrastructure/data_source/remote/firebase_repo.dart';

import '../../routes/route_generator.dart';

final getItInstance = GetIt.I;

Future init() async {
  getItInstance.registerLazySingleton<IFirebaseRepo>(() => FirebaseRepo());
   getItInstance.registerLazySingleton<IContactRepo>(() => ContactRepo());
   getItInstance.registerLazySingleton<IFileRepo>(() => FileRepo());
    getItInstance.registerLazySingleton<ISocialShareRepo>(() => SocialShareRepo());
  getItInstance.registerLazySingleton<RouteGenerator>(() => RouteGenerator());
  getItInstance.registerFactory<UserListBloc>(
      () => UserListBloc(fireRepo: getItInstance()));
  getItInstance.registerFactory<ContactListBloc>(
      () => ContactListBloc(contactRepo: getItInstance()));
      
        getItInstance.registerFactory<ProfileUploadBloc>(
      () => ProfileUploadBloc(fileRepo: getItInstance()));
              getItInstance.registerFactory<AttachBillBloc>(
      () => AttachBillBloc(fileRepo: getItInstance()));
               getItInstance.registerFactory<WhatsappReminderCubit>(
      () => WhatsappReminderCubit(socialShareRepo: getItInstance()));
            getItInstance.registerFactory<SmsReminderCubit>(
      () => SmsReminderCubit(socialShareRepo: getItInstance()));
}
