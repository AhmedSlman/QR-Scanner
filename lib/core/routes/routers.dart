import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code/core/routes/router_names.dart';
import 'package:qr_code/features/auth/presentation/views/sign_in_view.dart';
import 'package:qr_code/features/qrCode/cubit/qr_scan_cubit.dart';
import 'package:qr_code/features/qrCode/views/qr_result.dart';
import 'package:qr_code/features/qrCode/views/scan_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: RouterNames.signIn,
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: RouterNames.scanView,
      builder: (context, state) => BlocProvider(
        create: (context) => QRScanCubit(),
        child: const QRScanScreen(),
      ),
    ),
    GoRoute(
        path: RouterNames.qRScanResultView,
        builder: (context, state) => BlocProvider(
              create: (context) => QRScanCubit(),
              child: const QRScanResultView(),
            )),
  ],
);
