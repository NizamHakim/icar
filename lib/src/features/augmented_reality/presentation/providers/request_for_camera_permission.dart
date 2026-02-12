import 'package:permission_handler/permission_handler.dart';

Future<void> requestForCameraPermission() async {
  final permissionStatus = await Permission.camera.request();

  if (permissionStatus.isDenied) {
    await Permission.camera.request();
  }

  if (permissionStatus.isPermanentlyDenied) {
    await openAppSettings();
  }
}
