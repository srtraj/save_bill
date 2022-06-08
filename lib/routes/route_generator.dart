import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save_bill/application/attach_bill_bloc/attach_bill_bloc.dart';
import 'package:save_bill/application/contact_list_bloc/contact_list_bloc.dart';
import 'package:save_bill/application/profile_upadte_bloc/profile_upload_bloc.dart';
import 'package:save_bill/application/user_bloc/user_list_bloc.dart';
import 'package:save_bill/domain/di/get_it.dart';
import 'package:save_bill/presentation/pages/add_customer/add_customer_page.dart';
import 'package:save_bill/presentation/pages/bill_pages/add_bill/add_bill.dart';
import 'package:save_bill/presentation/pages/bill_pages/bill_list/bill_list.dart';
import 'package:save_bill/presentation/widgets/camera_preview.dart';
import 'package:save_bill/presentation/pages/get_start/get_start_page.dart';
import 'package:save_bill/presentation/pages/homepages/homepage.dart';
import 'package:save_bill/presentation/pages/login_page/otp_verification_page/otp_verification.dart';
import 'package:save_bill/presentation/pages/login_page/phone_verification/phone_verification.dart';
import 'package:save_bill/presentation/pages/profile_update_page/profile_update.dart';
import 'package:save_bill/routes/route_arguments.dart';
import 'routes.dart';

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const GetStartPage());
      case Routes.getStartPage:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const GetStartPage());
      case Routes.phoneVerification:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const PhoneVerification());
      case Routes.otpVerification:
        final argument = settings.arguments as OtpVerificationArgument;
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => OtpVerification(argument: argument));
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
              child: const HomePage()),
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
            settings: settings, builder: (_) => const BillHome());
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
            settings: settings, builder: (_) => const CameraPreviewPage());

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
}
