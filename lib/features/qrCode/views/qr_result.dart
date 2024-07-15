import 'package:flutter/material.dart';
import 'package:qr_code/core/functions/navigation.dart';
import 'package:qr_code/core/routes/router_names.dart';
import 'package:qr_code/core/utils/app_assets.dart';
import 'package:qr_code/core/utils/app_colors.dart';
import 'package:qr_code/core/utils/app_strings.dart';
import 'package:qr_code/core/utils/app_styles.dart';
import 'package:qr_code/core/widgets/custom_botton.dart';
import 'package:qr_code/features/qrCode/cubit/qr_scan_cubit.dart';
import 'package:qr_code/features/qrCode/cubit/qr_scan_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code/features/qrCode/widgets/qr_list_icon_botton_widget.dart';
import 'package:qr_code/features/qrCode/widgets/result_list_view.dart';

class QRScanResultView extends StatelessWidget {
  const QRScanResultView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<QRScanCubit>().loadScanResults();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Column(
        children: [
          SizedBox(height: size.height * 0.15),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * 0.008,
                  ),
                  Image.asset(AppAssets.rectangle),
                  SizedBox(height: size.height * 0.008),
                  HeaderIconBotton(
                    headerIcon: Image.asset(AppAssets.backIcon),
                    onTap: () {
                      customReplacementNavigate(context, RouterNames.scanView);
                    },
                  ),
                  SizedBox(height: size.height * 0.07),
                  const Text(
                    AppStrings.scanningResult,
                    style: AppStyles.s16,
                  ),
                  SizedBox(height: size.height * 0.03),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.15),
                    child: const Text(
                      AppStrings.resultWarning,
                      style: AppStyles.s12,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: size.height * 0.06),
                  const ResultListView(),
                  const SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                    child: CustomBotton(
                      buttonColor: AppColors.primaryColor,
                      text: AppStrings.send,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: size.height * 0.1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
