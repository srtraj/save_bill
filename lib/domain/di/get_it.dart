import 'package:get_it/get_it.dart';
import 'package:save_bill/application/add_customer_bloc/add_customer_cubit.dart';
import 'package:save_bill/application/attach_bill_bloc/attach_bill_bloc.dart';
import 'package:save_bill/application/contact_list_bloc/contact_list_bloc.dart';
import 'package:save_bill/application/customer_bloc/customer_list_bloc.dart';
import 'package:save_bill/application/download_complete_report_bloc/download_complete_report_cubit.dart';
import 'package:save_bill/application/mobile_login_bloc/otp_resend_clock_bloc/otp_resend_clock_cubit.dart';
import 'package:save_bill/application/mobile_login_bloc/verify_otp_bloc/verify_otp_bloc.dart';
import 'package:save_bill/application/mobile_login_bloc/verify_phone_bloc/verify_phone_bloc.dart';
import 'package:save_bill/application/profile_upadte_bloc/profile_upload_bloc.dart';
import 'package:save_bill/application/sms_reminder_bloc/sms_reminder_cubit.dart';
import 'package:save_bill/application/user_view_report_bloc/user_view_report_bloc.dart';
import 'package:save_bill/application/whatsapp_reminder_bloc/whatsapp_reminder_cubit.dart';
import 'package:save_bill/domain/i_repo/i_contact_repo.dart';
import 'package:save_bill/domain/i_repo/i_file_repo.dart';
import 'package:save_bill/domain/i_repo/i_firebase_repo.dart';
import 'package:save_bill/domain/i_repo/i_local_db_repo.dart';
import 'package:save_bill/domain/i_repo/i_social_share_repo.dart';
import 'package:save_bill/infrastructure/data_source/local/contact_repo.dart';
import 'package:save_bill/infrastructure/data_source/local/file_repo.dart';
import 'package:save_bill/infrastructure/data_source/local/local_db_repo.dart';
import 'package:save_bill/infrastructure/data_source/local/social_share_repo.dart';
import 'package:save_bill/infrastructure/data_source/remote/firebase_repo.dart';

import '../../routes/route_generator.dart';

final getItInstance = GetIt.I;

Future init() async {
  getItInstance.registerLazySingleton<IFirebaseRepo>(() => FirebaseRepo());
  getItInstance.registerLazySingleton<IContactRepo>(() => ContactRepo());
  getItInstance.registerLazySingleton<IFileRepo>(() => FileRepo());
  getItInstance
      .registerLazySingleton<ISocialShareRepo>(() => SocialShareRepo());
  getItInstance.registerLazySingleton<RouteGenerator>(() => RouteGenerator());
  getItInstance.registerLazySingleton<ILocalDbRepo>(() => LocalDbRepo());
  getItInstance.registerFactory<CustomerListBloc>(
      () => CustomerListBloc(fireRepo: getItInstance()));
  getItInstance.registerFactory<ContactListBloc>(
      () => ContactListBloc(contactRepo: getItInstance()));

  getItInstance.registerFactory<ProfileUploadBloc>(() =>
      ProfileUploadBloc(fileRepo: getItInstance(), fireRepo: getItInstance()));
  getItInstance.registerFactory<AttachBillBloc>(
      () => AttachBillBloc(fileRepo: getItInstance()));
  getItInstance.registerFactory<WhatsappReminderCubit>(
      () => WhatsappReminderCubit(socialShareRepo: getItInstance()));
  getItInstance.registerFactory<SmsReminderCubit>(
      () => SmsReminderCubit(socialShareRepo: getItInstance()));
  getItInstance.registerFactory<UserViewReportBloc>(() => UserViewReportBloc());
  getItInstance.registerFactory<VerifyPhoneBloc>(
      () => VerifyPhoneBloc(fireRepo: getItInstance()));
  getItInstance.registerFactory<VerifyOtpBloc>(
      () => VerifyOtpBloc(fireRepo: getItInstance()));
  getItInstance
      .registerFactory<OtpResendClockCubit>(() => OtpResendClockCubit());

  getItInstance.registerFactory<DownloadCompleteReportCubit>(
      () => DownloadCompleteReportCubit());
  getItInstance.registerFactory<AddCustomerCubit>(
      () => AddCustomerCubit(fireRepo: getItInstance()));
}
