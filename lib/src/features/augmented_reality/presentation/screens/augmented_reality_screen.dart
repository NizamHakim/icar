import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_unity_widget_2/flutter_unity_widget_2.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:icar/src/core/config/themes/app_colors.dart';
import 'package:icar/src/core/key/navigator_key.dart';
import 'package:icar/src/features/location/presentation/providers/user_location.dart';
import 'package:icar/src/features/map/presentation/providers/icars_position_map_stream.dart';
import 'package:icar/src/utils/extension/position_extension.dart';
import 'package:icar/src/utils/handle_error.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AugmentedRealityScreen extends ConsumerStatefulWidget {
  const AugmentedRealityScreen({super.key});

  @override
  ConsumerState<AugmentedRealityScreen> createState() =>
      _AugmentedRealityScreenState();
}

class _AugmentedRealityScreenState
    extends ConsumerState<AugmentedRealityScreen> {
  UnityWidgetController? _unityWidgetController;

  @override
  Widget build(BuildContext context) {
    final userLocation = ref.watch(userLocationProvider);
    final icarsPositionMapStream = ref.watch(icarsPositionMapStreamProvider);

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text("AR Scene"),
        centerTitle: true,
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.gray400,
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
          color: AppColors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: userLocation.when(
        data: (userLocationData) {
          moveUnityObject("User", userLocationData);
          icarsPositionMapStream.whenData((icarsPositionMap) {
            icarsPositionMap.forEach((icarId, icarPosition) {
              moveUnityObject("Car${icarId.toString()}", icarPosition);
            });
          });

          return UnityWidget(
            onUnityCreated: onUnityCreated,
            onUnityMessage: onUnityMessage,
            fullscreen: true,
          );
        },
        error: (error, stackTrace) {
          return handleError(context, error, stackTrace);
        },
        loading: () {
          return Skeletonizer(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: AppColors.white,
            ),
          );
        },
      ),
    );
  }

  void moveUnityObject(String objectName, Position nextPosition) {
    _unityWidgetController?.postJsonMessage("UtilScripts", "MessageReceiver", {
      "objectName": objectName,
      "nextPosition": nextPosition.latlonghead(),
    });
  }

  void onUnityCreated(UnityWidgetController controller) {
    _unityWidgetController = controller;
  }

  void onUnityMessage(dynamic message) {
    // print('Received message from unity: ${message.toString()}');
    showScheduleDialog(int.parse(message));
  }

  void showScheduleDialog(int icarStopId) {
    navigatorKey.currentContext!.push("/home/map/$icarStopId");
  }
}
