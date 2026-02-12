import 'package:permission_handler/permission_handler.dart';

Future<bool> checkForCameraPermission() async {
  final status = await Permission.camera.isGranted;
  return status;
}
