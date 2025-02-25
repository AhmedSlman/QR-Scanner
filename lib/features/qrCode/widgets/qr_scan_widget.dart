import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code/core/functions/navigation.dart';
import 'package:qr_code/core/routes/router_names.dart';
import 'package:qr_code/features/qrCode/cubit/qr_scan_cubit.dart';
import 'package:qr_code/features/qrCode/cubit/qr_scan_state.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScanWidget extends StatelessWidget {
  const QrScanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: BlocConsumer<QRScanCubit, QRScanState>(
        listener: (context, state) {
          if (state is QRScanResultAdded) {
            customReplacementNavigate(context, RouterNames.qRScanResultView);
          }
        },
        builder: (context, state) {
          return QRView(
            key: GlobalKey(debugLabel: 'QR'),
            onQRViewCreated: context.read<QRScanCubit>().onQRViewCreated,
          );
        },
      ),
    );
  }
}
