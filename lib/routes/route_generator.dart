import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save_bill/application/attach_bill_bloc/attach_bill_bloc.dart';
import 'package:save_bill/application/contact_list_bloc/contact_list_bloc.dart';
import 'package:save_bill/application/mobile_login_bloc/otp_resend_clock_bloc/otp_resend_clock_cubit.dart';
import 'package:save_bill/application/mobile_login_bloc/verify_otp_bloc/verify_otp_bloc.dart';
import 'package:save_bill/application/mobile_login_bloc/verify_phone_bloc/verify_phone_bloc.dart';
import 'package:save_bill/application/profile_upadte_bloc/profile_upload_bloc.dart';
import 'package:save_bill/application/sms_reminder_bloc/sms_reminder_cubit.dart';
import 'package:save_bill/application/user_bloc/user_list_bloc.dart';
import 'package:save_bill/application/user_view_report_bloc/user_view_report_bloc.dart';
import 'package:save_bill/application/whatsapp_reminder_bloc/whatsapp_reminder_cubit.dart';
import 'package:save_bill/domain/di/get_it.dart';
import 'package:save_bill/presentation/pages/add_customer/add_customer_page.dart';
import 'package:save_bill/presentation/pages/bill_pages/add_bill/add_bill.dart';
import 'package:save_bill/presentation/pages/bill_pages/bill_list/bill_list.dart';
import 'package:save_bill/presentation/pages/bill_pages/entry_details/entry_detail_page.dart';
import 'package:save_bill/presentation/pages/user_pages/user_page.dart';
import 'package:save_bill/presentation/pages/view_report_pages/view_report_page.dart';
import 'package:save_bill/presentation/widgets/camera_preview.dart';
import 'package:save_bill/presentation/pages/get_start/get_start_page.dart';
import 'package:save_bill/presentation/pages/login_page/otp_verification_page/otp_verification.dart';
import 'package:save_bill/presentation/pages/login_page/phone_verification/phone_verification.dart';
import 'package:save_bill/presentation/pages/profile_update_page/profile_update.dart';
import 'package:save_bill/routes/route_arguments.dart';
import 'routes.dart';

class RouteGenerator {
  VerifyPhoneBloc? _verifyPhoneBloc;
  OtpResendClockCubit? _otpResendClockCubit;
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const GetStartPage());
      // case Routes.getStartPage:
      //   return MaterialPageRoute(
      //       settings: settings, builder: (_) => const GetStartPage());
      case Routes.phoneVerification:
        _verifyPhoneBloc ??= getItInstance<VerifyPhoneBloc>();
        _otpResendClockCubit??=getItInstance<OtpResendClockCubit>();
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: _otpResendClockCubit!,
              ),
              BlocProvider.value(
                value: _verifyPhoneBloc!,
              ),
            ],
            child: const PhoneVerification(),
          ),
        );
      case Routes.otpVerification:
        _verifyPhoneBloc ??= getItInstance<VerifyPhoneBloc>();
                _otpResendClockCubit??=getItInstance<OtpResendClockCubit>();
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: _otpResendClockCubit!,
              ),
              BlocProvider(
                create: (_) => getItInstance<VerifyOtpBloc>(),
              ),
              BlocProvider.value(
                value: _verifyPhoneBloc!,
              ),
            ],
            child: const OtpVerification(),
          ),
        );
      case Routes.profileUpdatePage:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => BlocProvider(
            create: (_) => getItInstance<ProfileUploadBloc>(),
            child: const ProfileUpdatePage(),
          ),
        );
      case Routes.homepage:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => BlocProvider(
              create: (_) => getItInstance<UserListBloc>(),
              child: const UserPage()),
        );
      case Routes.addCustomer:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => BlocProvider(
            create: (_) => getItInstance<ContactListBloc>(),
            child: const AddCustomerPage(),
          ),
        );
      case Routes.billHome:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => getItInstance<WhatsappReminderCubit>(),
              ),
              BlocProvider(
                create: (_) => getItInstance<SmsReminderCubit>(),
              ),
            ],
            child: const BillHome(),
          ),
        );
      case Routes.addBill:
        final argument = settings.arguments as AddBillArguement;
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => BlocProvider(
            create: (_) => getItInstance<AttachBillBloc>(),
            child: AddBill(
              argument: argument,
            ),
          ),
        );
      case Routes.cameraPreview:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const CameraPreviewPage(),
        );
      case Routes.billEntryDetailPage:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const EntryDetailPage(),
        );
      case Routes.viewReportPage:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => BlocProvider(
            create: (_) => getItInstance<UserViewReportBloc>(),
            child: const ViewReportPage(),
          ),
        );

      default:
        return _errorRoute();
    }
  }

  Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text("ERROR"),
          ),
        );
      },
    );
  }

  void dispose() {
    _verifyPhoneBloc?.close();
    _otpResendClockCubit?.close();
  }
}
