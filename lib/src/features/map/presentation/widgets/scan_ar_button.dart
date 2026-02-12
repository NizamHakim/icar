import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icar/src/core/config/themes/app_colors.dart';
import 'package:icar/src/core/config/themes/app_icons.dart';
import 'package:icar/src/features/augmented_reality/presentation/providers/check_for_camera_permission_or_throw.dart';
import 'package:icar/src/features/augmented_reality/presentation/widgets/camera_permission_disabled_dialog.dart';
import 'package:icar/src/shared/presentation/widgets/app_icon.dart';

class ScanArButton extends StatelessWidget {
  const ScanArButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        if (!await checkForCameraPermission()) {
          if (!context.mounted) return;
          await showDialog(
            context: context,
            builder: (context) => const CameraPermissionDisabledDialog(),
          );
        }
        if (!context.mounted) return;
        context.go("/home/map/ar");
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.white,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
      ),
      child: const AppIcon(
        iconSvg: AppIconsSvg.scanner,
        color: AppColors.primary600,
        size: 20,
      ),
    );
  }
}
