import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icar/src/core/config/themes/app_colors.dart';
import 'package:icar/src/features/augmented_reality/presentation/providers/request_for_camera_permission.dart';
import 'package:icar/src/l10n/generated/augmented_reality_localizations.dart';

class CameraPermissionDisabledDialog extends StatelessWidget {
  const CameraPermissionDisabledDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        AugmentedrealityLocalizations.of(context)!.cameraPermissionTitle,
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.copyWith(color: AppColors.black),
      ),
      content: Text(
        AugmentedrealityLocalizations.of(context)!.cameraPermissionDesc,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.w500,
          color: AppColors.gray500,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => context.pop(),
          child: Text(
            AugmentedrealityLocalizations.of(context)!.stayDisabled,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: AppColors.gray400,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        TextButton(
          onPressed: () async {
            await requestForCameraPermission();
            if (!context.mounted) return;
            context.pop();
          },
          child: Text(
            AugmentedrealityLocalizations.of(context)!.grantPermission,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: AppColors.primary500,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
